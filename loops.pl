## This program will cover different looping techniques used in perl
## Dec 2013

#!/usr/local/bin/perl
use strict;
use warnings;

#for each loop
my @array = qw(red black blue white yellow);
my $count = 1;
foreach my $color(@array){
   print "Color $count: $color\n";
   $count++;
}

#conditional loops
my $number = 9;
if($number > 10){
   print "Number is greather than 10\n";
}
elsif($number< 10){
   print "Number is less than 10\n";
}
else{
   print "Number is 10!\n";
}

#unless
unless($number == 10){
   print "Number is not 10\n";
}
else{
   print "Number is 10!\n";
}

#until
$count = 0;
until(($array[$count] eq "yellow")){
   print "$array[$count]\n";
   $count++;
}

#print entire array until it gets to end of the array
$count = 0;
until(($array[$count] eq "")){
   print "$array[$count]\n";
   $count++;
}