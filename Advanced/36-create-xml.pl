use strict;
use warnings;
use XML::LibXML;
use vinpack::utils 'line';
use vinpack::dbutils qw(getDbh);


my ($emp, $employees, $dom, $dbh, $sth);

$dbh = getDbh();
$sth = $dbh->prepare("select * from employees");
$sth->execute();

# in-memory DOM object, not loaded from the file
# <?xml version="1.0" encoding="UTF-8" ?>
$dom = XML::LibXML::Document->new("1.0", "UTF-8");
$employees = $dom->createElement("employees");
$dom->setDocumentElement($employees);

while (my $emp = $sth->fetchrow_hashref) {
    my $empElem = emphash2xml($emp);
    $employees->appendChild($empElem);
}

$dbh->disconnect();

# to write the in-memory DOM tree to a file, call the ->toFile method
$dom->toFile("employees.xml", 1);

sub emphash2xml {
    my $e = shift;
    my $empElem = $dom->createElement("employee");
    $empElem->setAttribute("id", $e->{id});

    my $nameElem = $dom->createElement("name");
    $nameElem->appendText($e->{name});
    my $salaryElem = $dom->createElement("salary");
    $salaryElem->appendText($e->{salary});
    my $deptElem = $dom->createElement("dept");
    $deptElem->appendText($e->{dept});

    $empElem->appendChild($nameElem);
    $empElem->appendChild($salaryElem);
    $empElem->appendChild($deptElem);

    $empElem;
}

=EXAMPLE DOC
<?xml version="1.0" encoding="UTF-8" ?>
<employees>
    <employee id="1">
        <name></name>
        <salary></salary>
        <dept></dept>
    </employee>
</employees>
=cut
