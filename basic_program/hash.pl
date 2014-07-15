#!/usr/local/bin/perl

use strict;
use warnings;

# Simple hash constructs
my @keys;
my %fred;
$fred{"with"} =  "without";
$fred{"this"} = "that";
$fred{"here"} = "there";
$fred{"mountain"} = "valley";
$fred{"river"} = "mountain";
@keys = keys(%fred);
print "keys are @keys\n";
print "keys are "keys(%fred);
exit

