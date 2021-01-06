use strict;
use warnings;

my $marks = [
    ["James", 89, 83, 90],
    ["Allen", 82, 93, 91],
    ["Ramesh", 79, 99, 70]
];

print "First student: ", $marks->[0][0], "\n";
print "Marks 1: ", $marks->[0]->[1], "\n";
print "Marks 2: ", $marks->[0][2], "\n";
print "Marks 3: ", $marks->[0][3], "\n";

print "-" x 50, "\n";

for (my $i=0; $i<3; $i++) {
    for (my $j=0; $j<4; $j++) {
        print $marks->[$i][$j], "\t"
    }
    print "\n";
}