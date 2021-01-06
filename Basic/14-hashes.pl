# hash is a collection of key/value pair of scalars

%marks = (
    physics => 85, 
    maths => 89, 
    electronics => 81);

print "physics marks is $marks{physics}\n";
print "maths marks is $marks{maths}\n";
print "electronics marks is $marks{electronics}\n";
print "computers marks is $marks{computers}\n";

print '-' x 50, "\n";

%marks = (
    physics, 85, 
    maths, 89, 
    electronics, 81);

print "physics marks is $marks{physics}\n";
print "maths marks is $marks{maths}\n";
print "electronics marks is $marks{electronics}\n";
print "computers marks is $marks{computers}\n";

# extract multiple values from a hash
@pm_marks = @marks{physics, maths};
print '@pm_marks contains: ', join(', ', @pm_marks), "\n";

# extract keys and values from a hash
@marks_keys = keys %marks;
@marks_values = values %marks;
print '@marks_keys contains: ', join(', ', @marks_keys), "\n";
print '@marks_values contains: ', join(', ', @marks_values), "\n";

# length of the hash (number of keys or values)
$marks_count = keys %marks; 
print '$marks_count = ', $marks_count, "\n";

print '%marks contains: ', join(' ', %marks), "\n";
$marks{'computers'} = 95;
print '%marks contains: ', join(' ', %marks), "\n";
delete $marks{maths};
print '%marks contains: ', join(' ', %marks), "\n";
