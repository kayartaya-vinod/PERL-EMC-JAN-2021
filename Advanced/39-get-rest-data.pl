use strict;
use warnings;

use lib "/Users/vinod/Desktop/REST-Client-273/lib/";
use lib "/Users/vinod/Desktop/JSON-4.02/lib/";
use REST::Client;
use JSON;
use Data::Dumper;

use Product;
use ProductRepo;
use Try::Tiny;

my $client = REST::Client->new();
my $url = "https://vinbasket.herokuapp.com/products";

$client->GET($url);
my $resp = $client->responseContent();

my $data = decode_json($resp);

# print "There are ", scalar @products, " products\n";
# print Dumper $data->[0];

# print $_->{name}, "\n" for (@$data);

my $repo = new ProductRepo();

foreach my $h (@$data) {
    my $pr = new Product($h);
    try {
        $repo->addNewProduct($pr);
        print "$pr->{name} added to database table products\n";
    }
    catch {
        print $_, "\n";
    }
}