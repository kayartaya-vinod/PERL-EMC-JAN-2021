use strict;
use warnings;

use threads;
use Time::HiRes qw(sleep);

print "Start of main script\n";

my $txt = "Today is Thursday";
my @sentences = ("Tomorrow is Friday");

my $t1 = threads->create(\&greet, "Perl is cool and fun!");
my $t2 = threads->create(\&greet, "It's nice out there today.");
my $t3 = threads->create(\&greet);
my $t4 = threads->create(\&greet, @sentences);
my $t5 = threads->create(\&greet, $txt);


# $t1->join();
# $t2->join();
# $t3->join();
# $t4->join();
# $t5->join();
$_->join() for threads->list(); # wait for all the threads to finish their jobs

print "End of main script\n";


sub greet {
    my ($msg) = @_;
    # my $msg = shift;
    $msg = "Hello, there!" unless defined $msg;

    foreach (1..5) {
        print $msg, "\n";
        sleep(0.005);
    }
}


