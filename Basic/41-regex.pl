use strict;
use warnings;

=comment

an expression with two / symbols forms a regular expression:

For example: /vin/
Alternately, m{vin}

While using m, you can use any pair of symbols:
m/vin/
m{vin}
m[vin]
m(vin)

Match operator =~

$name = <>;
if ($name =~ /vin/) {
    ...
}
=cut

print "Enter a filename: ";
my $filename = <>;
chomp $filename;

# $! --> is the latest error message
# if you eavl (catch) a die-ing statement, then $@ represents the die-message
open FILE, "<", $filename or die $!;
while (<FILE>) {
    print "$_" if ($_ =~ /print/i);
    # print "$_" if ($_ =~ m[print]i);
    # print "$_" if ($_ =~ m{print}i);
    # print "$_" if ($_ =~ m|print|i);
    # print "$_" if ($_ =~ m*print*i);
}
close FILE;
 