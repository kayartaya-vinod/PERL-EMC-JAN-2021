use Switch;

print "Enter a number for month: ";
$mon = <>;
chomp($mon);

switch($mon) {
    case 2                      { print "$mon has 28 or 29 days\n"; }
    case [4,6,9,11]             { print "$mon has 30 days\n"; }
    case [1,3,5,7,8,10,12]      { print "$mon has 31 days\n"; }
    else                        { print "$mon is invalid for a month\n"; }
}