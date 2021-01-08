use strict;
use warnings;

use DBI;

print "Currently available driver list:\n";
print $_, "\n" for DBI->available_drivers();
