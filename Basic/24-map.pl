# map is used for converting elements of an array/hash into something else
use Data::Dumper;
use strict;
use warnings;

my @nums = (11..20);
# print "$_ " for @nums;
# print "\n";
print Dumper(\@nums);

# map BLOCK LIST
# map EXPR, LIST
my @squares = map { $_ * $_ } @nums;
# print "$_ " for @squares;
# print "\n";
print Dumper(\@squares);

# convert nums array into a hash of num=>square(num)

my %nums_squares = map { $_ => $_*$_ } @nums;

# 11 becomes 11=>121 in the new hash generated
# 12 becomes 12=>144
# 20 becomes 20=>400
print Dumper(\%nums_squares);