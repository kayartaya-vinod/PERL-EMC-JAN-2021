=start comment

Comparison operators

comparison          numbers     strings
equals to           ==          eq
not equals to       !=          ne
less than           <           lt
greater than        >           gt
less than / equals  <=          le
greater than/equals >=          ge

Combining multiple conditions:
and                 &&
or                  ||
not                 !

=cut

print "Enter a number for month: ";
$mon = <>;
chomp($mon);

if ($mon>=1 && $mon<=12) {
    print "$mon represents a valid month\n";
}
else {
    print "$mon does not represents a valid month!!\n";
}

print "Have a nice day\n";
