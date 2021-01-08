use strict;
use warnings;
use vinpack::dbutils qw(getDbh);
use vinpack::utils qw(line);

my ($id, $sql, $dbh, $sth, $emp, $salary);

print "Enter id for search and update: ";
$id = <>;
chomp $id;

$sql = "select * from employees where id = ?";
$dbh = getDbh();
$sth = $dbh->prepare($sql);

$sth->execute($id);
if ($emp = $sth->fetchrow_hashref()) {
    print "Data related to employee id $id:\n";
    line;
    print "Name       : ", $emp->{name}, "\n";
    print "Salary     : ₹", $emp->{salary}, "\n";

    print "What is the new salary for this employee? ";
    $salary = <>;
    chomp $salary;
    $sql = "update employees set salary=:NEW_SALARY where id=:ID";
    $sth = $dbh->prepare($sql);
    $sth->bind_param(":ID", $id);
    $sth->bind_param(":NEW_SALARY", $salary);
    $sth->execute();
    print "Salary updated to ₹", $salary, " for the employee ", $emp->{name}, "\n";
}
else {
    print "No employee found with id $id\n";
}

=NOTE

# using a hash
%emp = (ID=>1, NAME=>"Ramesh", SALARY=>45000, DEPT=>"ADMIN");

# using a user defined class
$emp = new Employee(1, "Ramesh", 45000, "ADMIN");

$empRepo->add($emp); # should add data to db as new record
$empRepo->update($emp); #should updated corresponding data in the table
$empRepo->findById(3); # should return a single employee object for the given id
$empRepo->findAll(); # should return an array of employees
$empRepo->findByDept("ADMIN") #
=cut
