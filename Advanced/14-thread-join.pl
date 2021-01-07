use strict;
use warnings;

use threads;

sub greet {
    foreach (1..5) {
        print "Hello, and Welcome\n";
        sleep(1);
    }
}

print "Start of main script\n";
my $t1 = threads->create(\&greet);
print "thread t1 started...\n";


$t1->join(); # wait until t1 finishes its task.

print "End of main script\n";
exit; # happens implicitly; terminates the process and all running threads will be killed.