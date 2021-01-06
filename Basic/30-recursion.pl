use strict;
use warnings;

sub factorial {
    my $num = shift;
    die "need a number" unless defined $num;
    return 1 if $num <=1;
    return $num * factorial($num-1);
}

my @nums = (5..10);
print factorial($_), "\n" for @nums;
