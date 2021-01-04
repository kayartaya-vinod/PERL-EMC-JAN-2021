use strict;
use warnings;

print "Enter a number: ";
my $num = <>;
chomp($num);

my $i = 1;

until ($i > 15) { # exits when the condition becomes TRUE
    print "$num X $i = ", $num*$i, "\n";
    # $i = $i + 1;
    # $i += 1;
    $i++;
}

print "program terminated, and value of i is $i\n";