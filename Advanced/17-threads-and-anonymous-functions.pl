use strict;
use warnings;

use threads;
use MathUtils qw(primesBetween);

print "Start of main script\n";

=anonymous function
threads->new(sub {})->join();
=cut

threads->new(sub {
    print join($", primesBetween(1, 100)) ;
    print "\n\n";
})->join();

threads->new(sub {
    print join($", primesBetween(100, 500)) ;
    print "\n\n";
})->join();

print "End of main script\n";