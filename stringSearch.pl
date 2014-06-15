##Perl program to search for a string in a text file
##March 2014
#!/usr/local/bin/perl
use strict;
use warnings;
=comment Method 1. Look at Method 2 for improvized version
open (FILE, "Text.txt") or die("Unable to find the file");
#print <FILE>;
my @array = <FILE>;
close FILE;
my $search = $ARGV[0];

for(my $k =0; $k <=$#array; $k++){
   my @splitArray = split(" ", $array[$k]);
   for(my $l =0; $l <=$#splitArray; $l++){
      print "$splitArray[$l]\n";
      @splitArray[$l] =~ s/\.//;
      if($splitArray[$l] eq $search){
         print "found key element\n";
         last;
      }
   }
}
=cut

open (FILE, "Text.txt") or die("Unable to find the file");
#print <FILE>;
local $/= ' ';
my @array = <FILE>;
close FILE;
my $search = $ARGV[0];

for(my $k =0; $k <=$#array; $k++){
   chomp($array[$k]);
   $array[$k] =~ s/\.//;
   print "$array[$k]\n";
   if($array[$k] eq $search){
      print "found key element: $array[$k]\n";
      last;
   }
}