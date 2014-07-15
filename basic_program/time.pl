#!/usr/local/bin/perl
$time = localtime(time);
print "$time\n";
($sec,$min,$hour) = localtime(time);
print "$sec,$min,$hour\n";
