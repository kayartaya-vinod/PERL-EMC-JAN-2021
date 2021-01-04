# A variable can be declared and bound to a scope (local, script level, package-level)
# Keywords - my, local, our

# pragmas allows to enable errors and warnings checks.
use strict;
use warnings;

my $name = "Vinod";
my $email = 'vinod@vinod.co';

print "Name = $name\n";
print "Email = $email\n";

my $fr_name = "Kishore";
print "Friend's name = $fr_name\n";

$name = "Vinod Kumar";
print "Full name = $name\n";


