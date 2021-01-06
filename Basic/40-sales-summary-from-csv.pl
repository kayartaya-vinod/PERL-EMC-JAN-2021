use strict;
use warnings;
use Data::Dumper;

# Beverages,Sasquatch Ale,179.2,1
# function to convert the above line into a hash

my @headers = qw(CATEGORY PRODUCT SALES QUARTER);

sub line2hash {
    my $line = shift;
    return undef unless defined $line;
    chomp $line;
    my @fields = split ",", $line;

    my %data = ();
    my $i = 0;
    for (@fields){
        $data{$headers[$i]} = $_;
        $i++;
    }
    return %data;
}

sub main {
    my $filename = "sales.csv";
    open FILE, "<", $filename or die $!;

    # skip first line (header)
    my $line = <FILE>;

    # new result hash
    my %result = ();

    while ($line = <FILE>) {
        my %d = line2hash $line;
        my ($cat, $sales);
        $cat = $d{"CATEGORY"};
        $sales = $d{"SALES"};

        # if(grep { $_ eq $cat } (keys %result) ){
        (exists $result{$cat}) ? $result{$cat} += $sales : $result{$cat} = $sales;
    }

   
    close FILE;
    print Dumper \%result;
}


main();

=avaialbe data
{
    'QUARTER' => '4',
    'CATEGORY' => 'Seafood',
    'SALES' => '4987.5',
    'PRODUCT' => 'Carnarvon Tigers'
}
=cut

=expected result is
    {
        "BEVERAGES" => 9999.9,
        "CONDIMENTS" => 9999.9,
        "CONFECTIONS" => 9999.9,
        "DARIY PRODUCTS" => 9999.9,
        "SEAFOOD" => 9999.9,
        ...
        ...
    }
=cut