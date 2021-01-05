use strict;
use warnings;

my @names = qw/vinod shyam arun anil suresh harish/;
my @ages = (47, 48, 46, 23, 33, 34);

foreach my $name (@names) {
    print "Hello, $name!\n";
}
print '-' x 50, "\n";

foreach (@names) {
    # $_ is an implicit variable that holds the current value of the array
    print "Namaskara, $_!\n";
}

print '-' x 50, "\n";

# access two arrays at corresponding indices, with out index access
my $i=0;
foreach my $name (@names) {
    my $age = $ages[$i];
    print "$name is $age years old.\n";
    $i++;
}

print '-' x 50, "\n";
foreach my $name (@names) {
    my $age = shift @ages; 
    print "$name is $age years old.\n";
}
# at the end of the loop above, @ages will be empty


my %marks = (
    Kiran => 98.2,
    Kishore => 93.5,
    Ramesh => 85.9
);

print '-' x 50, "\n";

foreach (keys %marks) {
    print "$_ has an aggregate marks of $marks{$_}\n";
}

print '-' x 50, "\n";

my %data = (
    Kiran =>    { Physics => 89, Maths => 95, Electronics => 87 },
    Rajesh =>   { Physics => 78, Maths => 89, Electronics => 77 },
    Harish =>   { Physics => 82, Maths => 91, Electronics => 94 }
);

print '-' x 50, "\n";

my %data1 = (
    Kiran =>    [ 89, 95, 87],
    Rajesh =>   [ 78, 89, 77 ],
    Harish =>   [82, 91, 94] 
);


print "-" x 50, "\n";
