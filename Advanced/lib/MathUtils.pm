package MathUtils;

use strict;
use warnings;

# we have to export few members from this package.
# For that, our package must be a subtype of Exporter 
use Exporter;
our @ISA = qw(Exporter); # inheritance (MathUtils IS-A Exporter)

# following array is just another array, but used by the Exporter class, and with out making our
# module as a subtype of Exporter, this is just an insignificant array.
our @EXPORT = qw(factorial square); # an array of strings representing the members to be exported

sub factorial {
    my ($num) = @_;
    die "You must supply a number" unless defined $num;

    my $f = 1;
    $f *= $_ for (2..$num);
    $f; # return $f;
}

sub square {
    my ($num) = @_;
    die "You must supply a number" unless defined $num;
    $num*$num;
}

1; # return 1;