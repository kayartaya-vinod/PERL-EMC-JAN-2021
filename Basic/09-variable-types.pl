# In Perl, variables can be of 3 types (hint: HAS)
# H -> Hash         prefixed with % -> holds key/value pairs
# A -> Arrays       prefixed with @ -> holds one more scalars (or other types as well)
# S -> Scalars      prefixed with $ -> holds a single value (string, int, float, ...)

# Scalars
$name = Vinod;
$fullname = "Vinod Kumar";
$age = 47;
$height = 5.8;
$addr = '1st cross,
1st main,
ISRO lyt,
Bangalore';

print '$name is ', $name, "\n";
print '$fullname is ', $fullname, "\n";
print '$age is ', $age, "\n";
print '$height is ', $height, "\n";
print '$addr is ', $addr, "\n";

# Array
@names = (Vinod, Shyam, Arun, Anil, "Ramesh Iyer", 'Jacob');
print '@names is ', @names, "\n";

# Hash
%book = (title=>'Let us C', 
    author=>'Y Kanitkar', 
    price=>299);

print '%book is ', %book, "\n";

print 'type of $name is ', ref($name), "\n";
print 'type of $names is ', ref(@names), "\n";
print 'type of $book is ', ref(%book), "\n";