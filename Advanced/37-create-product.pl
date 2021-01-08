use strict;
use warnings;
use Product;
use ProductRepo;
use Data::Dumper;

my $p1 = {
    id=>1,
    category=>"vegitable",
    name=>"Onion",
    brand=>"Fresho",
    description=>"Onion - Medium",
    quantity_per_unit=>"1 KG, approx. 10 to 12 nos",
    unit_price=>45,
    picture=>"https://vinbasket.herokuapp.com/product-images/10000148_13-fresho-onion-medium.jpg",
    discount=>22
};

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
$pr1->display();

use Data::Structure::Util;

print Dumper unbless($p1);

# print "saving pr1 to database...\n";

# my $repo = new ProductRepo(); # ProductRepo->new();
# $repo->addNewProduct($pr1);
# print "Product data added to db table\n";
