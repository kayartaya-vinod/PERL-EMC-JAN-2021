# Following types of data are allowed in Perl:

# 1. String -> interpolated, non-interpolated, unquoted, multiline
$name1 = "Allen\tD\'Souza";
$name2 = 'Allen\tD\'Souza';
$name3 = Allen;
$address = '1st cross,
1st main,
ISRO lyt
Bangalore';
$details = <<"DETAILS";
Name: $name3
Age: 47 years
Email: allen\@example.com
DETAILS

print '$name1 is ', $name1, "\n";
print '$name2 is ', $name2, "\n";
print '$name3 is ', $name3, "\n";
print '$address is ', $address, "\n";
print '$details is ', $details, "\n";

$new_details = <<'DETAILS';
Name: $name3
Age: 47 years
Email: allen\@example.com
DETAILS
print '$new_details is ', $new_details, "\n";


$age = 30; # integer
$height = 5.8; # floating point
$speed = 3e10; # scientific
$red_part = 0x2a; # hexadecimal
$oct_num = 0567; # octal

print '$age is ', $age, "\n";
print '$height is ', $height, "\n";
print '$speed is ', $speed, "\n";
print '$red_part is ', $red_part, "\n";
print '$oct_num is ', $oct_num, "\n";

print "\uthis is a line of string.\n";
print "\Uthis is a line of string.\n";
print "this is a \Uline\E of string.\n";
print "\LMY NAME IS VINOD KUMAR\n";
print "MY NAME IS \LVINOD\E KUMAR\n";
print "\Qthis is a line of string.\n";
print "\a"; # a beep sound

print "Value in \$name1 is \U$name1\E\n";

$name3 = "\U$name3";
print "modified name3 is $name3\n";