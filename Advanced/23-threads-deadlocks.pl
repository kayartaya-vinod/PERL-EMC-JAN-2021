use strict;
use warnings;
use threads;
use threads::shared;

my $num :shared = 10;
my $name :shared = "Vinod";

print "Start of main script\n";

my $t1 = threads->create(sub {
    print "T1: getting a lock on num...\n";
    lock($num);
    print "T1: got the lock on num!\n";
    print "T1: going to sleep for 2 sec...\n";
    sleep(2);
    print "T1: came back from sleep\n";

    print "T1: getting a lock on name...\n";
    lock($name);
    print "T1: got the lock on name!\n";
});

my $t2 = threads->create(sub {
    print "\tT2: getting a lock on name...\n";
    lock($name);
    print "\tT2: got the lock on name!\n";
    print "\tT2: going to sleep for 2 sec...\n";
    sleep(2);
    print "\tT2: came back from sleep\n";
    print "\tT2: getting a lock on num...\n";
    lock($num);
    print "\tT2: got the lock on num!\n";
});

$t1->join();
$t2->join();
print "End of main script\n";