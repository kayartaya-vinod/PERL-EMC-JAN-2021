use strict;
use warnings;

use threads;

sub sayHello {
    print "hello, there!\n" for (1..10);
}

print "Start of main script\n";

my $th1 = threads->new(\&sayHello);

print "End of main script\n";

sleep(1); # seconds