#!/usr/local/bin/perl

##Reading from a file
open (FILE, "file.txt") or die("Error");
print <FILE>;
close(FILE);

open(FILE, "file.txt");
@array = <FILE>;
close(FILE);

foreach $line(@array){
chomp($line);
$line = uc($line);
print "$line\n"
}

###Writing to a file
open(FILE, ">input.txt");
print FILE "Hello\n";
close(FILE);

###Appending to a file
##file lock provides exclusive lock to the file
open(FILE, ">>input.txt");
flock(FILE,2);
print FILE "Hello\n";
close(FILE);

##renaming the file
rename "input.txt", "input2.txt";

##copying the file
use File::Copy;
copy("input2.txt", "copied.txt");

##deleting a file
unlink "input2.txt";

exit;