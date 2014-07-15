##This program is used to run some functions in perl
##Dec 2013

#!/usr/local/bin/perl
use strict;
use warnings;
print "hello\n";
#map
#numbers
my @array = (1..5);
map{$_ = $_ * 2}(@array);
print "@array\n";
#words
@array = qw(apple orange banana);
map{$_ = uc($_)}(@array);
print "@array\n";

##grep
#numbers
@array = (1..10);
my @array2 = grep{$_ > 2}(@array);
print "@array2\n";
#words
@array = qw(apple orange banana plum);
@array2 = grep{$_ =~ "n"}(@array);
print "@array2\n";

my %hash = qw(
        name sri
        age 29
        city austin
        );

#reverse function
my $key;
my %reversed = reverse %hash;
foreach $key( keys %reversed){
   print "$key  -  $reversed{$key}\n";
}

##sort function
my $srtVal;
foreach $srtVal(sort keys %reversed){
   print "$srtVal\n";
}
foreach $srtVal(sort values %reversed){
   print "$srtVal\n";
}

# merging 2 hashes
my %hash2 = qw(
            salary 50
            country india
            );

my %hash3 = (%hash,%hash2);

foreach $key(keys %hash3){
   print "$key  -  $hash3{$key}\n";
}

exit;
