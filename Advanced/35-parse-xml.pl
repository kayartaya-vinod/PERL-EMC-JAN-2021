use strict;
use warnings;
use XML::LibXML;
use vinpack::utils 'line';

my ($filename, $dom);

$filename = "books.xml"; # relative to the script file
$dom = XML::LibXML->load_xml(location=>$filename);

print "Document $filename loaded to memory as a DOM tree\n";
line;

display("/books/book/title");
display("/books/book[2]/title");
display("//title");
display('//book[@isbn="84A746"]');
display('//book[author="Yeashwant Kanetkar"]/title');
display('//book/author[.="Yeashwant Kanetkar"]/../title');

sub display {
    my $xpath = shift;
    print "XPATH: $xpath\n\n";
    print $_->to_literal(), "\n" for $dom->findnodes($xpath);
    line;
}
