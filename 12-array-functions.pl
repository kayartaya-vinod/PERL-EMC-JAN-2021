# array manipulation functions

# push, pop, unshift, shift

@names = ("Vinod ", "Shyam ", "Suresh ", "Harish ");
print '@names contain: ', @names, "\n";

push(@names, "Sudheer ");
print 'After pushing, @names contain: ', @names, "\n";

unshift(@names, "Mahesh ");
print 'After unshifting, @names contain: ', @names, "\n";

$name1 = pop(@names); # last element removed from array, and returned as well.
print 'After popping, @names contain: ', @names, "\n";
print "Popped element is $name1\n";

$name2 = shift(@names);
print 'After shifting, @names contain: ', @names, "\n";
print "Shifted element is $name2\n";

$daynames = "Sun,Mon,Tue,Wed,Thu,Fri,Sat";
@days = split(',', $daynames);
print '@days contain: ', @days, "\n";
print "There are ", scalar @days, " days.\n";

$daynames = join(';', @days);
print '$daynames contain: ', $daynames, "\n";