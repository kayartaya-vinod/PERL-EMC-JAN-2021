use strict;
use warnings;
use vinpack::dbutils qw(getDbh);
use vinpack::utils qw(line);

my ($sql, $dbh, $sth, @row, $row_ref, $row_hashref);

$sql = "select * from employees";
$dbh = getDbh();
$sth = $dbh->prepare($sql);
$sth->execute();


while ($row_hashref = $sth->fetchrow_hashref){
    displayEmployee($row_hashref);
    # print $e->{id}, "\t", $e->{name}, "\t", $e->{salary}, "\t", $e->{dept}, "\n";
}

$dbh->disconnect();

sub displayEmployee {
    my ($e) = @_;
    print "Id         : ", $e->{id}, "\n";
    print "Name       : ", $e->{name}, "\n";
    print "Salary     : ₹", $e->{salary}, "\n";
    print "Department : ", $e->{dept}, "\n";
    line;
}