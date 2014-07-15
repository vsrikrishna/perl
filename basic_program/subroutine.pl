#!/usr/local/bin/perl

sub printval{
print "$message\n";
$sum = $value * 10;
print "$value * 10 = $sum\n";
}
$value = 7;

if($value<10){
$message = "The value is less than 10\n";
printval;
}
elsif($value>10){
$message = "The value is greater than 10\n";
printval;
}
else{
$message = "The value is 10!\n";
printval;
}

exit;
