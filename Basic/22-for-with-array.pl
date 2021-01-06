use strict;
use warnings;

my @names = qw/vinod shyam arun anil suresh harish/;
my @ages = (47, 48, 46, 23, 33, 34);

for (my $i=0; $i < scalar @names; $i++) {
    print $names[$i], " is ", $ages[$i], " years old\n";
}
