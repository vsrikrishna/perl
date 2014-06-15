##Program to check HTH pattern
#!/usr/local/bin/perl
use strict;
use warnings;

open (FILE, "pattern.txt") or die("Unable to find the file");
my $string = <FILE>;
my $count =0;
my @char = '0';
@char = split("",$string);

for(my $local=0; $local <@char; $local++){
   my $text = '0';
   $text = join("",$char[$local],$char[$local+1],$char[$local+2]);
   if($text eq "HTH"){
      $count++;     
   }
}
print "The number of pattern repetetions are $count \n";
exit 0;


