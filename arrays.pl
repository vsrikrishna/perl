#!/usr/local/bin/perl
# This program shows how to initialize array elements and adding/removing elements of an array; push, pop, shift and unshift operations on an array
# Dec 2013

use strict;
use warnings;

##Number Arrays##
#Array initialization and individual element access
my @arrays = (1,2,3,4);
print "@arrays\n";
print "$arrays[0]\n";

#Adding element to array
$arrays[4] = 8;
print "@arrays\n";

##String Arrays##
my @words = ("one","two","three", "four", "five");
print "@words\n";
print "$words[0]\n";

#Array length
my $total = @words;
print "Number of elements in string array is $total\n";

#Removing array elements
$#words  = 0;
print "Words array now contains these elements: ";
print "@words\n";

#Emptying an array
#@words = ();

#push & pop
#push & pop operates at the end of an array
push(@words, "xyz");
print "@words\n"; #prints "one two three xyz" as output
pop(@words);
print "@words\n"; #prints "one two three" as output

#shift & unshift
#shift & unshift operate at the start of an array
unshift(@words, "abc");
print "@words\n"; #prints "abc one two three" as output
shift(@words);
print "@words\n"; #prints "one two three" as output

exit;