use strict;
use warnings;
use Exporter;

package vinpack::utils;

our @ISA = ('Exporter');
our @EXPORT = ('line');

# my $AUTHOR = {
#     NAME=>"Vinod",
#     EMAIL=>"vinod\@vinod.co"
# };

sub line {
    my ($chr, $times) = @_;
    $chr = "-" unless defined $chr;
    $times = 50 unless defined $times;

    print $chr x $times, "\n";
}

1;