use strict;
use warnings;

use Data::Serializer;
use Data::Dumper;
use Product;

my $p1 = {
    NAME=>"Vinod",
    EMAIL=>"vinod\@vinod.co",
    PHONE=>"9731424784",
    WEBSITE=>"www.vinod.co"
};


my $obj = Data::Serializer->new();
my $s1 = $obj->serialize($p1);

# print Dumper $s1;

# my $p2 = $obj->deserialize($s1);
# print Dumper $p2;


$p1 = {
"id"=>2,
"category"=>"vegitable",
"name"=>"Potato",
"brand"=>"Fresho",
"description"=>"Potato",
"quantity_per_unit"=>"1 KG, approx. 9 to 10 nos",
"unit_price"=>25,
"picture"=>"https://vinbasket.herokuapp.com/product-images/10000159_14-fresho-potato.jpg",
"discount"=>2
};
my $pr1 = Product->new($p1);
# $s1 = $obj->serialize($pr1);

# print Dumper $s1;

# my $pr2 = $obj->deserialize($s1);
# print Dumper $pr2;

my $products = [$pr1, $pr1];
$s1 = $obj->serialize($products);

my $products2 = $obj->deserialize($s1);
print Dumper $products2;