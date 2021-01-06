# usage of map EXPR, LIST 

use strict;
use warnings;
use Data::Dumper;

=ucfirst 
converts the first char of a string into uppercase

my $name = 'vinod kumar';
print ucfirst($name), "\n";
=cut

my @names = qw(vinod shyam john jane vinay vishal kiran);
@names = map ucfirst, @names;
# @names = map { ucfirst($_) } @names;
print Dumper(\@names);


