# Different ways of creating arrays

@names = (Vinod, 'Shyam Sundar', [Harish, 'Naveen']);
print '@names contain - ', @names, "\n";
print "There are ", scalar @names, " names\n";

print '$names[2][0] is ', $names[2][0], "\n";
print '$names[2][1] is ', $names[2][1], "\n";

# quoted words -> splits the entire sentence betwee two slashes with white-space a delimite
@cities = qw/
Bangalore
Mysore
Hubli
Dharwad
Shimoga
Hassan
Mangalore/;

print "There are ", scalar @cities, " cities\n";
print "first city = $cities[0]\n";
print "second city = $cities[1]\n";

print "last city = $cities[$#cities]\n";
print "last city = $cities[-1]\n";
print "3rd city from last $cities[-3]\n";
