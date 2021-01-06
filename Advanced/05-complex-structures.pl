use strict;
use warnings;

my $customers = {
    VNDKMR => {
        NAME => "Vinod Kumar",
        EMAIL => "vinod\@vinod.co",
        CITY => "Bangalore"
    },
    JHND => {
        NAME => "John Doe",
        EMAIL => "johndoe\@example.com",
        CITY => "Dallas"
    }
};

foreach (keys %$customers) {
    my $c = $customers->{$_};
    print "Name: $c->{NAME}\nEmail: $c->{EMAIL}\nCity: $c->{CITY}\n\n";
}

print "Customer names: \n";
print $customers->{$_}->{NAME}, "\n" for (keys %$customers);