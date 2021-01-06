# User input is via an opertor (diamond)
# optionally specify from where the input is accepted

use strict;
use warnings;

print "Enter your name: ";
my $name = <>;
# my $name = <STDIN>;
chomp($name);

print "Hello, $name!\n";
print "Lenth of name is ", length($name), "\n";
