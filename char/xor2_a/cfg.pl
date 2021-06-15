$cellname = "xor2_c";
@sim_results = ("delay.log");
@output_pins = ("z");
@input_pins = ("a", "b");
$function{"z"} = "!a*b+a*!b";
$area = "216.0";

1;
