# double quotes are used for interploation $ @ # % \ {} ()

# with interpolation
print "Vinod\nBangalore\nKarnataka\nIndia\n";

# no interpolation
print 'Vinod\nBangalore\nKarnataka\nIndia\n';
print "\n";

$name = Vinod; # for a one word string, there is no need of quotation marks
$age = 47;

print "\"$name\" is $age years old.\n";
print '$name is $age years old.\n', "\n";

$new_age = $age + 10;

print "After 10 yers, $name will be $new_age years.\n";
