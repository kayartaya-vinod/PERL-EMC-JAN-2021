use strict;
use warnings;

use threads;
use MathUtils qw(primesBetween);
use Time::HiRes qw(sleep);

print "Start of main script\n";

my $th1 = threads->create(\&writeToFile, "primes.txt", 100, 500);
# $th1->join();
# $th1->detach(); # thread will continue to execute, even after main thread quits.
sleep(1);
print "End of main script\n";


sub writeToFile {
    # detach from the boss thread
    threads->detach(); # current thread gets detached from the main thread.

    my ($filename, $from, $to) = @_;
    open FILE, ">", $filename or die $!;
    foreach (primesBetween($from, $to)) {
        print FILE $_, "\n";
        sleep(.01);
    }
    close FILE;
}