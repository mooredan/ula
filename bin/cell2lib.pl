#!/usr/bin/perl -w

use strict;
use Data::Dumper;

my $scriptname = "extract.pl";

my $filename = "sim.log";

if ( ! -r $filename) {
   printf STDERR "ERROR: $scriptname: File \"%s\" is not readable\n", $filename;
   exit 1;
}

my @comb_arcs = ();

my @output_pins = ();
my @input_pins = ();


# Go through once to figure out input pins and output pins
open(FH, "<$filename") or die "ERROR: $scriptname: Could not open $filename";

while(<FH>) {
   if (/^delay:/ || /^trans:/) {
      # print;
      my @tarray = split(); 
      my $arc_name = $tarray[1];

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

   }
}
close(FH);


my %delays;
my %trans;
my %trans_itts;
my %trans_loads;
my %delay_itts;
my %delay_loads;

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





# my $key = "b_rise__z_fall";

# print_delay_itts($key);
# print_delay_loads($key);

# print_trans_itts($key);
# print_trans_loads($key);



# print_delay_values($key);
# print_trans_values($key);
# 
# exit(0);




# make a hash of arrays, for each
# outlist list the arcs that are
# associated with that output
my %associated_arcs = ();
my %related_pins = ();

foreach my $opin (@output_pins) {
   my @arc_array = ();
   my @ipin_array = ();
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
   }
   $associated_arcs{$opin} = [@arc_array];
   $related_pins{$opin} = [@ipin_array];
}



foreach my $opin (@output_pins) {
  # printf "output_pin: %s\n", $opin;
  printf "  pin(%s) {\n", $opin;
  printf "    direction : output;\n", $opin;
  printf "    capacitance : 0;\n", $opin;
  # foreach my $itr2 (@{ $associated_arcs{$opin} }) {
     # printf "   associated_arc: %s\n", $itr2;
  # }
  foreach my $ipin (@{ $related_pins{$opin} }) {
     printf "    timing() {\n";
     printf "      related_pin: \"%s\";\n", $ipin; 
     printf "      timing_sense : non_unate;\n";
     foreach my $arc (@{ $associated_arcs{$opin} }) {
        my $this_arc = $arc;
        $this_arc =~ s/__/ /;
        $this_arc =~ s/_rise//g;
        $this_arc =~ s/_fall//g;
        (my $this_ipin, my $this_opin) = split(/\s+/, $this_arc);
        if ($this_ipin eq $ipin) {
           printf "      associated_arc: %s\n", $arc;


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
     printf "    }\n";
  }
}




exit(0);

foreach my $itr (@input_pins) {
  printf "input_pin: %s\n", $itr;
}
foreach my $itr (@comb_arcs) {
  printf "comb_arc: %s\n", $itr;
}



foreach my $itr (@comb_arcs) {
   open(FH, "<$filename") or die "ERROR: $scriptname: Could not open $filename";
   while(<FH>) {
      if(/^delay: $itr/) {
         print;
      }
   }
   close(FH);
   print "\n";
}


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
