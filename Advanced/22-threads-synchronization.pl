use strict;
use warnings;

use threads;
use threads::shared;
use Time::HiRes qw(sleep);

my $num :shared = 1; # two or more threads race to work (read/write)

print "Start of main script\n";
my $t1 = threads->create(\&sub1);
my $t2 = threads->create(\&sub2);

$t1->join();
$t2->join();
print "End of main script\n";
print "Value of num is $num\n";

sub sub1{
    # do some thing....
    # do some thing....
    {   
        lock($num); # block this resource until we have the lock
        my $var = $num; # reading
        sleep(0.1);
        $num = $var + 1; # writing
    } # lock is implicitly released, making the shared resource available to other threads
    # do some thing....
    # do some thing....
}
sub sub2{
    lock($num);
    my $var = $num; # reading
    $num = $var + 1; # writing
} # lock on $num is released over here


=NOTE

my $num :shared = 100;

my $t1 = threads->new(\&doSomeWork);
my $t2 = threads->new(\&doSomeWork);
my $t3 = threads->new(\&doPartWork);
$_->join() for threads->list();

sub doSomeWork {
    {
        lock($num); # wait for the lock; if no other threads hold lock on $num, we get the lock;
        lock($num); # NOOP - we already have the lock to $num
        {
            lock($num); # NOOP
            {
                lock($num); # NOOP
                doPartWork();
            }
        }
    } # lock is released
}

sub doPartWork {
    lock($num); # NOOP when called from doSomeWork; otherwise wait for the lock;
} # Nothing happens here if called from doSomeWork; for $t3, the lock on $num is released.
=cut