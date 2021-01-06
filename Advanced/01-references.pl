#! /usr/bin/perl

print "References demo\n";

=variables

Can be of:
1. scalar   $myname = "Vinod";
2. array    @friends = ("Vinod", "shyam");
3. hash     %capitals = (KARNATAKA=>"Bangalore", MAHARASHTRA=>"Mumbai");
=cut

$myname = "Vinod";
@friends = ("Vinod", "shyam");
%capitals = (KARNATAKA=>"Bangalore", MAHARASHTRA=>"Mumbai");

print '$myname is ', $myname, "\n";
print '@friends is ', @friends, "\n";
print '%capitals is ',  %capitals, "\n";

$refScalar = \$myname;
$refArray = \@friends;
$refHash = \%capitals;

print '$refScalar is ', $refScalar, "\n";
print '$refArray is ', $refArray , "\n";
print '$refHash is ', $refHash, "\n";

# de-referencing the references
print 'Value refered by $refScalar is ', $$refScalar, "\n";
print 'Value refered by $refArray is ', @$refArray, "\n";
print 'Value refered by $refHash is ', %$refHash, "\n";