use strict;
use warnings;

use Rectangle;
use Square;
use Data::Dumper;
use vinpack::utils qw(line);

my $r1 = new Rectangle();
my $r2 = new Rectangle(12, 34);

# print Dumper $r1;
$r1->display;
$r2->display;
line;

print "perimeter of r1 is: ", $r1->perimeter, "\n";
print "perimeter of r2 is: ", $r2->perimeter, "\n";
line;
my $sq1 = new Square();
my $sq2 = new Square(287);

$sq1->display;
$sq2->display;
line;
print "perimeter of sq1 is: ", $sq1->perimeter, "\n";
print "perimeter of sq2 is: ", $sq2->perimeter, "\n";
line;
print Dumper $sq2;

line;

print "value of r1 is ", $r1, "\n";
print "value of r2 is ", $r2, "\n";
print "value of sq1 is ", $sq1, "\n";
print "value of sq2 is ", $sq2, "\n";
