use strict;
use warnings;

print "Enter a number: ";
my $num = <>;
chomp($num);

my $i = 1;

while ($i <= 15) {
    print "$num X $i = ", $num*$i, "\n";
    # $i = $i + 1;
    # $i += 1;
    $i++;
}

print "program terminated, and value of i is $i\n";