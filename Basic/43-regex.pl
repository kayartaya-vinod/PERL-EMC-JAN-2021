use strict;
use warnings;

my @data = (
    "vinod",
    "shyam",
    "vishal",
    "nihal",
    "vinay",
    "ramya",
    "ajay",
    "mukram",
    "navin kumar",
    "jayaram",
    "kumar ravi kumar",
    "ramesh",
    "rajesh",
    "melvin miller",
    "ravi kumar",
    "vinod kumar",
    "kumar gaurav",
    "kumar",
    "rohit kumar"
);

sub printArray {
    my ($pattern, @data) = @_;

    foreach (@data) {
        print $_, ", ", if ($_ =~ /$pattern/);
    }
    print "\n";
}

# print all names that start with "vi"
printArray("^vin", @data);

# print all names that end with "ram"
printArray('ram$', @data);

# print all names matching "kumar" exactly
printArray '^kumar$', @data;


my $sent = "python is a scripted language. python is an interpreted language. python is fun.";

=substitue
    $str =~ s/regex1/regex2/
=cut

$sent =~ s/python/perl/g;
print $sent, "\n";

=grouping
    (.*) --> represents a group within the string in question
=cut

my $email = 'kumar@vinod.co';
my ($name, $domain, $ext) = $email =~ /(.*)@(.*)\.(.*)/;
# print "Name = $name\n";
# print "Domain = $domain\n";
# print "Extension = $ext\n";
print "Name = $1\n";
print "Domain = $2\n";
print "Extension = $3\n";
