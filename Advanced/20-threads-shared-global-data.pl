use strict;
use warnings;
use threads;
use threads::shared; # allows us to share one or more global variables with threads.
use Data::Dumper;

my $num :shared = 10; # shared
my @names = qw(Vinod Shyam); # not shared
my %connInfo :shared = (HOST=>"localhost", PORT=>3306, DATABASE=>"mydb"); # shared

sub modifyGlobalData {
    $num++;
    push @names, "Suresh";
    $connInfo{DRIVER} = "mysql";

    print "Inside the thread scope: \n";
    print Dumper \$num, \@names, \%connInfo;
}

print "Before: \n";
print Dumper \$num, \@names, \%connInfo;

# modifyGlobalData();
threads->create(\&modifyGlobalData)->join();

print "After: \n";
print Dumper \$num, \@names, \%connInfo;

=NOTES

my %h :shread;
my $v = 1;
my $s :shared = 2;
... create few threads

$h{a} = 1   --> all threads see exists($h{a})
delete $h{a}--> okay; all threads see !exists($h{a})
$h{a} = $v; --> okay; copy-by-value
$h{a} = $s; --> okay; copy-by-value
$h{a} = \$s; --> okay; $h{a} holds the reference of $s
$h{a} = \$v; --> $v is not shared, hence it is just a copy in the thread's scope, and $h{a} is a reference to that local copy in the thead's scope.
=cut