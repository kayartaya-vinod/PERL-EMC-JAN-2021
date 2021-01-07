use strict;
use warnings;
use threads;
use Data::Dumper;

my $num = 10;
my @names = qw(Vinod Shyam);
my %connInfo = (HOST=>"localhost", PORT=>3306, DATABASE=>"mydb");

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