# chomp is a function to remove the trailing \n from a string/array/hash
# chop is a function to remove the last character from a string/array/hash

$text = "This is a text\n";

print '-' x 25, "\n";
print $text, "\n";
print '-' x 25, "\n";

# chomp($text);
chomp($text);

print '-' x 25, "\n";
print $text, "\n";
print '-' x 25, "\n";
