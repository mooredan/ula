#!/usr/bin/perl -w

use strict;
use Data::Dumper;
use File::Basename;
use Getopt::Std;

my $scriptname = basename($0);

my $usage = "Usage: $scriptname [-c <config_file>] [-h]";

our($opt_c);
our($opt_h);

getopts('c:h') or die $usage;

if($opt_h) {
   print STDERR "$usage\n";
   exit(0);
}

my $config_file = "./cfg.pl";

if($opt_c) {
   $config_file = $opt_c;
   unless($config_file =~ /^\.\// || $config_file =~ /^\// || $config_file =~ /^\.\.\//) {
      $config_file = "./" . $config_file;
   }
}

if (! -r $config_file) {
   printf STDERR "ERROR: $scriptname: File \"%s\" is not readable\n", $config_file;
   exit 1;
}

######################################
# default values for config variables
######################################
our $cellname = "";
our @sim_results = ();
our @output_pins = ();
our @input_pins = ();
our %function;
our $area = 21.6;


require $config_file;


if ($cellname eq "") {
   printf STDERR "ERROR: $scriptname: cellname is not defined, check configuration file\n";
   exit 1;
}

# determine cell type, special things need to happen if it is a mux or xor, ... gate
#
my ($celltype, $strength) = split(/_/, $cellname);



############
# check to see if there are simulation results
############
foreach my $sim_result (@sim_results) {
   if (! -r $sim_result) {
      printf STDERR "ERROR: $scriptname: Simulation results file \"%s\" is not readable\n", $sim_result;
      exit(1);
   }
}


# Hashes / arrays to store gathered data
my @comb_arcs = ();
my %delays;
my %trans;
my %trans_itts;
my %trans_loads;
my %delay_itts;
my %delay_loads;
my %max_cap;

my %when_pin;

if($celltype eq "xor2") {
   if($#input_pins != 1) {
      printf STDERR "ERROR: $scriptname: This gate \"%s\" should have only 2 input pins\n", $cellname;
      exit(1);
   }
}





foreach my $sim_result (@sim_results) {
   if($sim_result eq "delay.log") {
      parse_delay_log($sim_result);
   }
}


# my $key = "b_rise__z_fall";

# print_delay_itts($key);
# print_delay_loads($key);

# print_trans_itts($key);
# print_trans_loads($key);



# print_delay_values($key);
# print_trans_values($key);
# 
# exit(0);

####################################################
# Do some sanity checks
####################################################
if($celltype eq "xor2") {
   if($#input_pins != 1) {
      printf STDERR "ERROR: $scriptname: This gate \"%s\" should have only 2 input pins\n", $cellname;
      exit(1);
   }
   $when_pin{$input_pins[0]} = $input_pins[1];
   $when_pin{$input_pins[1]} = $input_pins[0];
}


##################################################################
# Process data
##################################################################

# make a hash of arrays, for each
# outlist list the arcs that are
# associated with that output
my %associated_arcs = ();
my %related_pins = ();
my %pos_unate_associated_arcs = ();
my %neg_unate_associated_arcs = ();


foreach my $opin (@output_pins) {
   my @arc_array = ();
   my @ipin_array = ();
   my @positive_unate_arcs = ();
   my @negative_unate_arcs = ();
   foreach my $arc (@comb_arcs) {
      my $this_arc = $arc;
      $this_arc =~ s/__/ /;
      $this_arc =~ s/_rise//g;
      $this_arc =~ s/_fall//g;
      (my $this_ipin, my $this_opin) = split(/\s+/, $this_arc);

      if($this_opin eq $opin) {
         # printf("This arc: %s belongs to output pin: %s\n", $arc, $opin);
         push(@arc_array, $arc);

         unless(grep(/^$this_ipin$/, @ipin_array)) {
            push(@ipin_array, $this_ipin);
         }
      } 


      $this_arc = $arc;
      $this_arc =~ s/__/ /;
      my ($in_tran, $out_tran) = split(/\s+/, $this_arc);
      $in_tran =~ s/.*_//;
      $out_tran =~ s/.*_//;

      if ($out_tran eq $in_tran) {
         push(@positive_unate_arcs, $arc);
      } else {
         push(@negative_unate_arcs, $arc);
      }

   }
   $associated_arcs{$opin} = [@arc_array];
   $related_pins{$opin} = [@ipin_array];

   # printf "@positive_unate_arcs\n";
   # printf "@negative_unate_arcs\n";
   $pos_unate_associated_arcs{$opin} = [@positive_unate_arcs];
   $neg_unate_associated_arcs{$opin} = [@negative_unate_arcs];
}




##############################################################
# output .lib file
##############################################################
printf "cell(%s) {\n", $cellname;
printf "  area : %g;\n", $area;

##### input pins
foreach my $ipin (@input_pins) {
  printf "  pin(%s) {\n", $ipin;
  printf "    direction : input;\n";
  printf "    capacitance : 0;\n";
  printf "  }\n";
}


##### output pins
foreach my $opin (@output_pins) {
  # printf "output_pin: %s\n", $opin;
  printf "  pin(%s) {\n", $opin;
  printf "    direction : output;\n";
  printf "    capacitance : 0;\n";
  if (defined $function{$opin}) {
  printf "    function : \"%s\";\n", $function{$opin};
  if (defined $max_cap{$opin}) {
  printf "    max_capacitance : %.3f;\n", ($max_cap{$opin} / 1.0e-12) * 0.95;
  }
  }
  # foreach my $itr2 (@{ $associated_arcs{$opin} }) {
     # printf "   associated_arc: %s\n", $itr2;
  # }



  foreach my $ipin (@{ $related_pins{$opin} }) {

  
     # Need to do a timing() block for each associated arc but grouped
     # in terms of unateness
        my $first_arc = 0;

        foreach my $arc (@{ $pos_unate_associated_arcs{$opin} }) {
           # is this arc associated with this pin
           my $this_arc = $arc;
           $this_arc =~ s/__/ /;
           $this_arc =~ s/_rise//g;
           $this_arc =~ s/_fall//g;
           (my $this_ipin, my $this_opin) = split(/\s+/, $this_arc);

           # printf " --- this_ipin: %s   this_opin: %s ---\n", $this_ipin, $this_opin;

           if ($this_ipin eq $ipin) {
              # printf " ====   associated_arc: %s matches! ====\n", $arc;


              if ($first_arc == 0) {
                 printf "    timing() {\n";
                 printf "      related_pin: \"%s\";\n", $ipin; 
                 if(defined($when_pin{$ipin})) {
                 printf "      sdf_cond : \"!%s\";\n", $when_pin{$ipin};
                 }
                 printf "      timing_sense : positive_unate;\n";
                 if(defined($when_pin{$ipin})) {
                 printf "      when : \"%s\'\";\n", $when_pin{$ipin};
                 }
                 $first_arc = 1;
              }


              $this_arc = $arc;  
              $this_arc =~ s/__/ /;
              (my $in_trans, my $out_trans) = split(/\s+/, $this_arc);
              $in_trans =~ s/.*_//;
              $out_trans =~ s/.*_//;

              print_delay_template($arc);
              print_delay_itts($arc);
              print_delay_loads($arc);
              print_delay_values($arc);
              printf "      }\n";


              print_transition_template($arc);
              print_trans_itts($arc);
              print_trans_loads($arc);
              print_trans_values($arc);
              printf "      }\n";

           }
        }
        printf "    }\n"; # end of timing block


        $first_arc = 0;
        foreach my $arc (@{ $neg_unate_associated_arcs{$opin} }) {
           # is this arc associated with this pin
           my $this_arc = $arc;
           $this_arc =~ s/__/ /;
           $this_arc =~ s/_rise//g;
           $this_arc =~ s/_fall//g;
           (my $this_ipin, my $this_opin) = split(/\s+/, $this_arc);

           if ($this_ipin eq $ipin) {

              if ($first_arc == 0) {
                 printf "    timing() {\n";
                 printf "      related_pin: \"%s\";\n", $ipin; 
                 if(defined($when_pin{$ipin})) {
                 printf "      sdf_cond : \"%s\";\n", $when_pin{$ipin};
                 }
                 printf "      timing_sense : negative_unate;\n";
                 if(defined($when_pin{$ipin})) {
                 printf "      when : \"%s\";\n", $when_pin{$ipin};
                 }
                 $first_arc = 1;
              }


              $this_arc = $arc;  
              $this_arc =~ s/__/ /;
              (my $in_trans, my $out_trans) = split(/\s+/, $this_arc);
              $in_trans =~ s/.*_//;
              $out_trans =~ s/.*_//;

              print_delay_template($arc);
              print_delay_itts($arc);
              print_delay_loads($arc);
              print_delay_values($arc);
              printf "      }\n";


              print_transition_template($arc);
              print_trans_itts($arc);
              print_trans_loads($arc);
              print_trans_values($arc);
              printf "      }\n";

           }
        }
        printf "    }\n"; # end of timing block
  }
  printf "  }\n"; # end of output pin block
}
printf "}\n"; # end of cell definition


exit(0);

# foreach my $itr (@input_pins) {
#   printf "input_pin: %s\n", $itr;
# }
# foreach my $itr (@comb_arcs) {
#   printf "comb_arc: %s\n", $itr;
# }


# foreach my $itr (@comb_arcs) {
#    open(FH, "<$filename") or die "ERROR: $scriptname: Could not open $filename";
#    while(<FH>) {
#       if(/^delay: $itr/) {
#          print;
#       }
#    }
#    close(FH);
#    print "\n";
# }


exit 0;


sub print_delay_template {
   my ($arc) =  @_;

   my $tmp = $arc;
   $tmp =~ s/__/ /;
   (my $in_tran, my $out_tran) = split(/\s+/, $tmp);
   $out_tran =~ s/.*_//; 

   my @tarray = @{ $delays{$arc} };
   my $last_j = $#tarray;
   my @subarray = @{ $tarray[0] };
   my $last_i = $#subarray;

   $last_j++;
   $last_i++;

   printf "      cell_%s(delay_template_%dx%d) {\n", $out_tran, $last_j, $last_i;
}

sub print_transition_template {
   my ($arc) =  @_;

   my $tmp = $arc;
   $tmp =~ s/__/ /;
   (my $in_tran, my $out_tran) = split(/\s+/, $tmp);
   $out_tran =~ s/.*_//; 

   my @tarray = @{ $delays{$arc} };
   my $last_j = $#tarray;
   my @subarray = @{ $tarray[0] };
   my $last_i = $#subarray;

   $last_j++;
   $last_i++;

   printf "      %s_transition(delay_template_%dx%d) {\n", $out_tran, $last_j, $last_i;
}


sub print_trans_values {
   my ($key) =  @_;
   my @tarray = @{ $delays{$key} };
   my $last_j = $#tarray;
   my @subarray = @{ $tarray[0] };
   my $last_i = $#subarray;
   
   for (my $i = 0; $i <= $last_i; $i++) {
      for (my $j = 0; $j <= $last_j; $j++) {
         my $value = $trans{$key}[$j][$i];
   
         if ($i == 0 && $j == 0) {
            printf "        values ( \\\n";
         }
         if ($j == 0) {printf "          \"";}
         printf "%.3f", $value / 1.0e-9;
         if ($j < $last_j) {
            printf ", ";
         } else {
            if ($i < $last_i) {
               printf "\", \\\n";
            } else {
               printf "\");\n";
            }
         }
      }
   }
}


sub print_delay_values {
   my ($key) =  @_;
   my @tarray = @{ $delays{$key} };
   my $last_j = $#tarray;
   my @subarray = @{ $tarray[0] };
   my $last_i = $#subarray;
   
   # printf "last_i: %d\n", $last_i;
   # printf "last_j: %d\n", $last_j;
   
   for (my $i = 0; $i <= $last_i; $i++) {
      for (my $j = 0; $j <= $last_j; $j++) {
         my $value = $delays{$key}[$j][$i];
   
         if ($i == 0 && $j == 0) {
            printf "        values ( \\\n";
         }
         if ($j == 0) {printf "          \"";}
         printf "%.3f", $value / 1.0e-9;
         if ($j < $last_j) {
            printf ", ";
         } else {
            if ($i < $last_i) {
               printf "\", \\\n";
            } else {
               printf "\");\n";
            }
         }
      }
   }
}

sub print_trans_itts {
   my ($key) =  @_;
   my @tarray = @{ $trans_itts{$key} };
   my $last_j = $#tarray;

   for (my $j = 0; $j <= $last_j; $j++) {
      my @subarray = @{ $tarray[$j] };
      my $average = calc_average(@subarray);

      if($j == 0) {
         printf "        index_1 (\"%.3f, ", $average / 1.0e-9;
      } else {
         if ($j == $last_j) {
            printf "%.3f\");\n", $average / 1.0e-9;
         } else {
            printf "%.3f, ", $average / 1.0e-9;
         }
      }
   }
}

sub print_delay_itts {
   my ($key) =  @_;
   my @tarray = @{ $delay_itts{$key} };
   my $last_j = $#tarray;

   for (my $j = 0; $j <= $last_j; $j++) {
      my @subarray = @{ $tarray[$j] };
      my $average = calc_average(@subarray);
      # printf "avg: %g\n", $average;

      if($j == 0) {
         printf "        index_1 (\"%.3f, ", $average / 1.0e-9;
      } else {
         if ($j == $last_j) {
            printf "%.3f\");\n", $average / 1.0e-9;
         } else {
            printf "%.3f, ", $average / 1.0e-9;
         }
      }
   }
}

sub print_trans_loads {
   my ($key) =  @_;
   my @tarray = @{ $trans_loads{$key} };
   my $last_j = $#tarray;

   for (my $j = 0; $j <= $last_j; $j++) {
      my @subarray = @{ $tarray[$j] };
      my $average = calc_average(@subarray);

      if($j == 0) {
         printf "        index_2 (\"%.3f, ", $average / 1.0e-12;
      } else {
         if ($j == $last_j) {
            printf "%.3f\");\n", $average / 1.0e-12;
         } else {
            printf "%.3f, ", $average / 1.0e-12;
         }
      }
   }
}

sub print_delay_loads {
   my ($key) =  @_;
   my @tarray = @{ $delay_loads{$key} };
   my $last_j = $#tarray;

   # my @subarray = @{ $tarray[0] };
   # my $last_i = $#subarray;
   # printf "last_i: %d\n", $last_i;
   # printf "last_j: %d\n", $last_j;

   for (my $j = 0; $j <= $last_j; $j++) {
      my @subarray = @{ $tarray[$j] };
      my $average = calc_average(@subarray);
      # printf "avg: %g\n", $average;

      if($j == 0) {
         printf "        index_2 (\"%.3f, ", $average / 1.0e-12;
      } else {
         if ($j == $last_j) {
            printf "%.3f\");\n", $average / 1.0e-12;
         } else {
            printf "%.3f, ", $average / 1.0e-12;
         }
      }
   }
}

# subroutine definition
sub calc_average {
    # get total number of arguments passed
    my $total_args = scalar(@_);
    my $sum = 0;
    # sum up all arguments
    foreach my $arg (@_){
       $sum += $arg;
    }
    # calculate and return average
    my $average = $sum / $total_args;
    return ($average);
}


sub parse_delay_log {

   my ($filename) = @_;

   # my $filename = "delay.log";

   if ( ! -r $filename) {
      printf STDERR "ERROR: $scriptname: File \"%s\" is not readable\n", $filename;
      exit 1;
   }
   
   # Go through once to figure out input pins and output pins
   open(FH, "<$filename") or die "ERROR: $scriptname: Could not open $filename";
   while(<FH>) {
      if (/^delay:/ || /^trans:/) {
         # print;
         my @tarray = split(); 
         my $arc_name = $tarray[1];
         my $load = $tarray[7];
   
         unless(grep(/^$arc_name$/, @comb_arcs)) {
            push(@comb_arcs, $arc_name);
         }
   
         $arc_name =~ s/__/ /;
         $arc_name =~ s/_rise//g;
         $arc_name =~ s/_fall//g;
         (my $ipin, my $opin) = split(/\s+/, $arc_name);
   
         unless(grep(/^$ipin$/, @input_pins)) {
            push(@input_pins, $ipin);
         }
         unless(grep(/^$opin$/, @output_pins)) {
            push(@output_pins, $opin);
         }

         # printf "opin: %s   load: %.3f\n", $opin, $load / 1.0e-12;
         if (defined($max_cap{$opin})) {
            if($load > $max_cap{$opin}) {
               $max_cap{$opin} = $load;
            }
         } else {
            $max_cap{$opin} = $load;
         }
      }
   }
   close(FH);
   
   
   open(FH, "<$filename") or die "ERROR: $scriptname: Could not open $filename";
   while(<FH>) {
      if (/^delay:/ || /^trans:/) {
         my @tarray = split();
         # my $key = sprintf("%s__%s", "delay", $tarray[1]);
         my $key = $tarray[1];
         my $idx1 = $tarray[2]; 
         my $idx2 = $tarray[3];
         my $value = $tarray[9];
         my $itt = $tarray[5];
         my $load = $tarray[7];
   
         if (/^delay:/) {
            $delays{$key}[$idx1][$idx2] = $value;
            $delay_itts{$key}[$idx1][$idx2] = $itt;
            $delay_loads{$key}[$idx2][$idx1] = $load;
         }
         if (/^trans:/) {
            $trans{$key}[$idx1][$idx2] = $value;
            $trans_itts{$key}[$idx1][$idx2] = $itt;
            $trans_loads{$key}[$idx2][$idx1] = $load;
         }
         # print;
      }
   }
   close(FH);
}
