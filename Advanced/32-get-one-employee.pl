use strict;
use warnings;
use vinpack::dbutils qw(getDbh);
use vinpack::utils qw(line);

my ($sql, $dbh, $sth, $row_hashref, $id, $emp);

$sql = "select * from employees where id = ?";
$dbh = getDbh();
$sth = $dbh->prepare($sql);

print "Enter id for search: ";
$id = <>;
chomp $id;

$sth->bind_param(1, $id); # 1--> 1st question mark/parameter
$sth->execute();

if ($emp = $sth->fetchrow_hashref()) {
    print "Data related to employee id $id:\n";
    line;
    print "Name       : ", $emp->{name}, "\n";
    print "Salary     : ₹", $emp->{salary}, "\n";
    print "Department : ", $emp->{dept}, "\n";
    line;
}
else {
    print "No employee found with id $id\n";
}

