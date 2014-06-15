print "Please enter a number:";
my $number = <STDIN>;
chomp($number);

if($number eq reverse($number)){
print "Number is a palindrome\n";
}
else{
print "Number is not a palindrome\n";
}
