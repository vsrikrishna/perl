#!/usr/local/bin/perl

use warnings;
use strict;

my $data = "<tag>this is a line of code</tag>
<explanation>this is where I wax poetic about my code</explanation>
<tag>this is another example of code</tag>";
if ($data =~ /<explanation>(.*)<\/explanation>/s) {
	print "I found =>$1<=\n";
}
