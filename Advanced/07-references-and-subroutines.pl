use strict;
use warnings;
use Data::Dumper;

sub display {

    print Dumper \@_;
    my ($p1, $p2) = @_;
    print "Displaying...\n";
    print Dumper \$p1;
    print Dumper \$p2;
}


my %vinod = (FNAME=>"Vinod", LNAME=>"Kumar", CITY=>"Bangalore", EMAIL=>"vinod\@vinod.co");
my $shyam = {FNAME=>"Shyam", LNAME=>"Sundar", CITY=>"Shimoga"};

# display(%vinod);    # passes 8 scalar values 
# display(\%vinod);   # passes 1 reference value
# display($shyam, \%vinod);    # passes 2 reference values

sub toUc {
    # works with hash
    my (%data) = @_; # recieves a copy of the parameter
    foreach (keys %data) {
        $data{$_} = "\U$data{$_}";
    }
    print "Inside toUc, \%data is", Dumper(\%data);
}

# print "Before calling toUc, \%vinod is", Dumper(\%vinod);
# toUc(%vinod);
# print "After calling toUc, \%vinod is", Dumper(\%vinod);


sub toUcV2 {
    # works with hash
    my ($data) = @_; # recieves a reference of the parameter
    foreach (keys %$data) {
        $data->{$_} = "\U$data->{$_}";
    }
    print "Inside toUcV2, \$data is", Dumper($data);
}

print "Before calling toUc, \$shyam is", Dumper(\$shyam);
toUcV2($shyam);
print "After calling toUc, \$shyam is", Dumper(\$shyam);
