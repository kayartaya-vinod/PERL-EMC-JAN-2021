# grep can be used for filtering an array
# grep BLOCK LIST

use strict;
use warnings;
use Data::Dumper;

my @nums = (1..10);

my @evens = grep { $_%2==0 } @nums;
print Dumper(\@evens);

my @emps = qw(Vinod Shyam John Jane);
print "Enter your name: ";
my $name = <>;
chomp($name);

if ( grep { $_ eq $name } @emps ) {
    print "$name is a valid employee name\n";
}
else {
    print "$name is not in the list of employee names\n";
}


