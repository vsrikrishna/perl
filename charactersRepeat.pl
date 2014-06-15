#!/usr/local/bin/perl

use warnings;
use strict;

my $pat = qr{
             (              # 1: capture the whole substring
               (?:          
                (.)         # a character
                (?!\2\2)    # NOT repeated three times
               ){1,4}       # one to four of such 'good' characters
             ..             # two any characters more; 2+4 = 6
             )
}x;

foreach (qw/AABBDDEEEE AABBBCCD AAABBCCD AABBCCCD AAABCDEF ABCDEFG/) {
   print "$1\n" if /$pat/;
}