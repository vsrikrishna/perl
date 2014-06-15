##This program lists different operators used in perl
## Dec 2013

#!/usr/local/bin/perl
use strict;
use warnings;

#auto-increment decrement operator
my $letter = "z";
$letter++;
print "$letter\n"; #will print "aa" as output
$letter--;
print "$letter\n"; #auto decrement does not work for letters

$letter = "A";
$letter--;
print "$letter\n"; #auto decrement does not work for letters

#to the power off operator
my $sum = 2 ** 3;
print "$sum\n"; #this will print 8 as the answer.
$sum = 2 ** 0.3;
print "$sum\n"; #this will print 8 as the answer.

#modulus operator
my $mod = 10%3;
print "$mod\n"; #this will print out 1 as output

#division operator
my $div;
$div = 10/3; 
print "$div\n"; #this will print out 3.333 as output

use integer;
$div = 10/3; 
print "$div\n"; #this will print 3 as output

exit;