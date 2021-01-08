use strict;
use warnings;
use vinpack::dbutils qw(getDbh);

my ($dbh, $sql, $sth, @data, $ans);

$dbh = getDbh();
$sql = "insert into employees(name, salary, dept) values (?, ?, ?)";
$sth = $dbh->prepare($sql); # one round trip to db, where sql gets parsed/validated/compiled/cached
do {
    @data = newEmployeeData();
    $sth->execute(@data); # passing 3 parameters; 2nd roundtrip to db server; carries only values.
    print "One employee record inserted\n";

    print "Do you have another employee data to insert? yes/no: (yes) ";
    $ans = <>;
    chomp $ans;
} while ($ans eq "" || $ans eq "yes");
$dbh->disconnect();


sub newEmployeeData {
    my ($name, $salary, $dept);
    print "Enter name: ";
    $name = <>;
    chomp $name;
    print "Enter salary: ";
    $salary = <>;
    chomp $salary;
    print "Enter department name: ";
    $dept = <>;
    chomp $dept;

    my @emp = ($name, $salary, $dept);
    @emp;
}