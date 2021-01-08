use strict;
use warnings;

use ProductRepo;
use Product;
use vinpack::utils qw(line);

my $repo = new ProductRepo();
my @products =  $repo->findAll();

my $size = scalar @products;

print "There are $size products in the db.\n";
line;
foreach (@products){
    $_->display();
    line;
}
