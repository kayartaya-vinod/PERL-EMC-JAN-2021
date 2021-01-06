# creating a reference to an array object directly

use strict;
use warnings;

# RHS is an anonymous array object, returns the reference of the same to LHS
my $names = ["Vinod", "Shyam", "John", "Jane"];

foreach my $name (@$names) {
    print $name, "\n";
}

for (my $i=0; $i<4; $i++) {
    # print "name at index $i is ", @$names[$i], "\n";
    print "name at index $i is ", $names->[$i], "\n";
}
