use strict;
use warnings;
use threads;
use MathUtils qw (primesBetween);

print "Start of main script\n";
my ($t1) = threads->create(\&primesBetween, 1, 100);
my ($t2) = threads->create(\&primesBetween, 100, 300);
my ($t3) = threads->create(\&primesBetween, 300, 1000);
my ($t4) = threads->create(\&primesBetween, 1000, 10000);

=NOTE
In the example above for creating threads, we define the variables in round brackets, since the return value from the primesBetween is an array. This is applicable for hashes as well.
=cut

# threads->create calls the primesBetween function passing the respective parameters,
# and then collects the return value. However, the return value from the threads->create
# function is the thread itself, which stored in $t1 etc.

# Return value from primesBetween can collected only after the assigned task is finished.
# This can be accessed via the return value from the thread->join();

print join($", $_->join()), "\n\n\n" for threads->list();

print "End of main script\n";
