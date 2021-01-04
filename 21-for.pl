use strict;
use warnings;

print "Enter a number: ";
my $num = <>;
chomp($num);

for (my $i=1; $i<=15; $i++) {
    print "$num X $i = ", $num*$i, "\n";
}