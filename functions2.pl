##Program to test some functions
##January 2014

#!/usr/local/bin/perl
#split function examples
$words = "My name is Sri";
($w1, $w2, $w3, $w4) = split(/ /, $words);
print "$w1\n";
print "$w2\n";
print "$w3\n";
print "$w4\n";
@words = split(/ /, $words);
print "@words\n";

#join function examples
$joined = join(" ", "A", "good", "job");
print "$joined\n";

#lower & upper case examples
$words = "all the words are small case";
$words = uc($words);
print "$words\n";
$words = lcfirst($words);;
print "$words\n";

$words = "ALL UPPER CASE WORDS";
$words = lc($words);
print "$words\n";
$words = ucfirst($words);;
print "$words\n";

#length function
$string = "today is thursday and tomorrow is friday";
$length = length($string);
print "length of string is $length\n";

#substr function
$substring = substr($string, 9);
print "substring is $substring\n";

$substring = substr($string, 9, 8);
print "substring is $substring\n";

#index function
$string = "here there and everywhere\n";
$index = index($string, "and");
print "and is at an index of $index\n";

exit;
