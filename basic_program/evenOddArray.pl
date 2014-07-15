###Write a function to take the following list and return one list of odd numbers and one list of even numbers:
###ints = [1,21,53,84,50,66,7,38,9]
###07/14/2014

#!/usr/bin/perl
my @ints=(1,21,53,84,50,66,7,38,9);
my @odd;
my @even;

foreach my $temp(@ints){ 
   if($temp%2==0){
      push(@even, $temp);
   }
   else{
      push(@odd, $temp);       
   }
}
print "Even Number array is: ";
print "@even\n";

print "Odd Number array is: ";
print "@odd\n";

exit;
