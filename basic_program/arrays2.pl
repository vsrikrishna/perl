# This program shows how to merge, reverse and sort an array
# Dec 2013

#!/usr/local/bin/perl
use strict;
use warnings;

#Merge 2 arrays
#my @array1 = ("one", "two", "three"); - standard array initiailization 
my @array1 = qw(one two three); # optimized array initialization
my @array2 = qw(four five six); # optimized array initialization
my @array3 = (@array1, @array2);
print "@array3\n";

#Reverse an array
my @reverse = reverse(@array3);
print "@reverse\n";

#Sort an array
my @numbers = (9,8,7,6,5,2,3,0);
my @sort = sort(@reverse); 

#ascending order
print "@sort\n"; # This sorting will print words in ascending order
@sort = sort(@numbers); 
print "@sort\n"; # This sorting will print numbers in ascending order

#descending order
@sort =  sort {$b cmp $a}(@reverse);
print "@sort\n"; # This sorting will print words in descending order
@sort =  sort {$b <=> $a}(@numbers);
print "@sort\n"; # This sorting will print numbers in descending order

exit;
