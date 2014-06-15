##This program was developed to verify how hash functions work
#Dec 2013

#!/usr/local/bin/perl
use strict;
use warnings;

my %hash;

#elements are not stored in same order as they are assigned in a hash
$hash{name}="sri";
$hash{age}=29;
$hash{city}="austin";

#print "$hash{city}\n";

$hash{"last name"}="vijayapuri";# when there are 2 words then we need to use quotation
$hash{"residence"}= "austin texas";
#print '$hash{"last name"}\n';# when there are 2 words then we need to use quotation

#alternate hash assignment
%hash = (
    'name','sri' ,
	'age','25',
	'city','bangalore'
);
#print "$hash{name}\n";

%hash = qw(
    name sri 
	age 29
	city bangalore
	salary 50
);
#print "$hash{age}\n";

#while loop 
my $key;
my $value;
while(($key, $value) = each(%hash)){
   print "$key -> $value\n";
}

#foreach loop
foreach $key (keys %hash){
   #print "$key\n";
}
foreach $value (values %hash){
   #print "$value\n";
}

#exist function
if(exists($hash{name})){
   #print "Key  name exists\n";
}
else{
   #print "Key name does not exist\n";
}

#defined function
if(defined($hash{salary})){
   #print "Key is defined\n";
}
else{
   #print "Key is not defined\n";
}

#deleting hash element
delete($hash{salary});

if(exists($hash{salary})){
   #print "Key salary exists\n";
}
else{
   #print "Key salary does not exist\n";
}
