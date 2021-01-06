use strict;
use warnings;
# use lib "./lib/"; # pushes this entry into @INC array
# alternately, set the environment variable PERL5LIB

use MathUtils qw(factorial square);

my $n = 5;
my $f = MathUtils::factorial($n);

print "Factorial of $n is $f\n";

$n = 10;
$f = factorial($n);
print "Factorial of $n is $f\n";

print "Square of $n is ", square($n), "\n";

# pushing a path to @INC doesn't help
# push @INC, "/Users/vinod/Desktop/perl-sandbox/Advanced/lib/";
# print "Current values in \@INC array: \n";
# foreach (@INC) {
#     print "$_\n";
# }