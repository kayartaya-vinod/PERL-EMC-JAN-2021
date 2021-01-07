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
    my $var = $num; # reading
    sleep(0.1);
    $num = $var + 1; # writing
}
sub sub2{
    my $var = $num; # reading
    $num = $var + 1; # writing
}