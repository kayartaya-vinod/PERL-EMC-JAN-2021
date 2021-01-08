use strict;
use warnings;
use vinpack::dbutils qw(getDbh);
use vinpack::utils qw(line);

my ($sql, $dbh, $sth, $row_hashref, $dept, $emp);

$sql = "select * from employees where lower(dept) = lower(:DEPT)";
$dbh = getDbh();
$sth = $dbh->prepare($sql);

print "Enter department for search: ";
$dept = <>;
chomp $dept;

$sth->bind_param(":DEPT", $dept); # "DEPT"--> 1st named parameter
$sth->execute();

if ($emp = $sth->fetchrow_hashref()) {
    print "Data related to department $dept:\n";
    line;
    do {
        print "Name       : ", $emp->{name}, "\n";
        print "Salary     : ₹", $emp->{salary}, "\n";
        print "Department : ", $emp->{dept}, "\n";
        line;
    } while($emp = $sth->fetchrow_hashref())
}
else {
    print "No employees in department named $dept\n";
}
$dbh->disconnect();