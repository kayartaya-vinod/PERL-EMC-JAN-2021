# Strings and string operatos

$fname = Vinod;
$lname = "Kumar";

$fullname = $fname . ' ' . $lname;
print "full name is $fullname\n";

$fullname = $fname + ' ' + $lname;
print "full name is $fullname\n";

$fullname = "";
$fullname .= $fname;
$fullname .= ' ';
$fullname .= $lname;
print "full name is $fullname\n";
