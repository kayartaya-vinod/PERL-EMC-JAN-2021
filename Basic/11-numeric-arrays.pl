@nums = (10, 20, 30);

@range_of_nums = (1, 7, 123, 10..20);

@alphabets = (a..z, A..Z);

print '@nums is ', @nums, "\n";
print '@range_of_nums is ', @range_of_nums, "\n";
print '@alphabets is ', @alphabets, "\n";

print 'Size of @alphabets array is ', scalar @alphabets, "\n";
@new_alphabets = @alphabets; # copy
$alpha_size = @alphabets; # size of the array

print 'Size of @alphabets array is ', $alpha_size, "\n";

$last_index = $#alphabets; # last index of an array
print "Last index of the array alphabets is $last_index\n";

