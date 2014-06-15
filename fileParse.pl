#!/usr/local/bin/perl
##############################################
###Author - Sri Krishna Vijayapuri
# To simulteanously read and write on files
# Date Created: 04/10/2013
##############################################
use Tie::File;

$text = " ";
#$file1 = $ARGV[0];
$file1 = "words/1.txt";
tie my @pattern, 'Tie::File', $file1 or die "Can't read file\n";
   #print "HELLO\n";
   print $pattern[10];
   for($i=0; $i<@pattern; $i++){
      #print "IN for loop";
      if($pattern[$i] =~ /POST/){
	     print $pattern[$i];
      }
      else{
         $pattern[$i]=$text;
      }
   }
   print "\n";
