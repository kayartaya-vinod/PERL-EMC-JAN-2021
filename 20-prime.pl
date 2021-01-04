use strict;
use warnings;

print "Enter a number: ";
my $num = <>;
chomp($num);

my $i = 2;
my $lim = int($num / 2);
my $is_prime = 1;

while ($i <= $lim) {
    if ($num % $i == 0) {
        $is_prime = 0;
        last; # similar to break in most other language
    }
    $i++;
}

if ($is_prime) {
    print "$num is a prime number\n";
}
else {
    print "$num is not a prime number\n";
}