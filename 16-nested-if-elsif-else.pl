print "Enter a number for month: ";
$mon = <>;
chomp($mon);

unless ($mon<1 || $mon>12) {
    if ($mon==2) {
        print "February has 28 or 29 days\n";
    } elsif ($mon==4 || $mon==6 || $mon==9 || $mon==11) {
        print "April, June, September and November have 30 days\n";
    } else {
        print "Jan, Mar, May, Jul, Aug, Oct and Dec have 31 days\n";
    }
    
} else {
    print "$mon does not represents a valid month!!\n";
}