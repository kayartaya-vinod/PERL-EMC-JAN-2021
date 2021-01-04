# Operations:
# 1. accessing more than one element
# 2. replace array elements (splice)
# 3. combine/merge multiple arrays into one

@names1 = qw/vinod shyam john jane jacob scott miller naveen/;

# array slicing
@names2 = @names1[2..6];
@names3 = @names1[0, 1, -1];

print '@names1 contain: ', join(', ', @names1), "\n";
print '@names2 contain: ', join(', ', @names2), "\n";
print '@names3 contain: ', join(', ', @names3), "\n";

# assigns the last name in the resulting/sliced array (@names1[6])
$names4 = @names1[2..6];
print '$names4 is ', $names4, "\n";


# replacing one or more elements is done using splice function
# splice (@array, offset[, length, [new_list]])

@names5 = @names1; # copy
splice(@names5, 2); # removes elements from index 2 till end
print '@names5 contain: ', join(', ', @names5), "\n";

@names5 = @names1; # copy
@names6 = splice(@names5, 2, 3); # removes 3 elements from index 2
print '@names5 contain: ', join(', ', @names5), "\n";
print '@names6 contain: ', join(', ', @names6), "\n";

@names5 = @names1; # copy
@new_names = ('vishal', 'raja', 'gopal', 'sumedh');
splice(@names5, 2, 3, @new_names); # replace 3 elements from index 2 till end
print '@names5 contain: ', join(', ', @names5), "\n";


# inserting at a given index
@names5 = @names1; # copy
splice(@names5, 3, 0, 'ritesh'); # removes elements from index 2 till end
# splice(@names5, 3, 0, 'ritesh', 'umesh'); # removes elements from index 2 till end
# splice(@names5, 3, 0, @new_names); # removes elements from index 2 till end
print '@names5 contain: ', join(', ', @names5), "\n";

@arr1 = qw/sun mon tue/;
@arr2 = qw/wed thu fri sat/;

# spreads the values of each array
@days = (@arr1, @arr2);
print '@days contain: ', join(', ', @days), "\n";
print 'Size of @days is ', scalar @days, "\n";

# spreads the values of each array
@days = (@arr1, (wed, thu, fri, sat));
print '@days contain: ', join(', ', @days), "\n";
print 'Size of @days is ', scalar @days, "\n";

$last_index = $#days;
$last_value = $days[$last_index];
print "last index is $last_index and last value is $last_value\n";

# set the starting index to 1 instead of the default 0
$[ = 1;

$last_index = $#days;
$last_value = $days[$last_index];
print "last index is $last_index and last value is $last_value\n";

print '@names1: ', join(', ', @names1), "\n";
@sorted_names = sort(@names1); # does not mutate/change the original array
print '@sorted_names: ', join(', ', @sorted_names), "\n";