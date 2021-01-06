use strict;
use warnings;
use Data::Dumper;

my @names = qw(Vinod Shyam Suresh Harish);

# copy 
my @friends = @names;
# refernce
my $namesRef = \@names;


push @names, "Ravi"; # append "Ravi"
splice @names, 2, 1; # delete "Suresh"

print Dumper \@names;
print Dumper \@friends;
print Dumper $namesRef;