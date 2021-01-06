use strict;
use warnings;

use Employee;
use Data::Dumper;
use vinpack::utils qw(line);

my $e1 = new Employee(1122, "Ramesh", "ramesh\@example.com", 45000);

# print Dumper $e1;

$e1->display;
line;

# overloaded operator methods / magic methods
$e1 += 7000; # expect salary to be incremented
# above line is equivalent of 
# $e1->{SALARY} = $e1->{SALARY} + 5000;
# $e1 = $e1->incrementSalaryBy(5000);

$e1 .= " Kumar"; # expect name to be appended with 

$e1->display;

print $e1, "\n";