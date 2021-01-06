=basic concepts

Object -> entity/instance that contains:
1. data/attributes/properties/information
2. behavior/methods/actions/functions/subroutines/

For example, 
emp1 as an object of Employee, may consist of :
1. Data:
    a. id
    b. name
    c. salary
    d. department
2. Methods:
    printDetails
    setName, setId, setSalary, incrementSalary, getDepartment, getSalary...


Class -> blueprint/template consisting of features of similar objects (for creating objects)

OOP features by Grady booch:
MAJOR PRINCIPLES:
1. Abstraction
2. Encapsulation
3. Modularity
4. Hierarchy (code reusability):
    a. Aggregation/Composition  HAS-A
    b. Inheritance              IS-A
    c. Association              USES-A
    
    Polymorphism is a side-effect of inheritance or
    a. overloading of functions
    b. overloading of operators
MINOR PRINCIPLES:
1. Typing
2. Concurrency
3. Persistence
=cut

use strict;
use warnings;
use Data::Dumper;  

use Person;

# 'new' here is not a keyword; it's just a subroutine.
# following statement can be written as 
# my $p1 = Person->new();

# object oriented way of invoking a constructor
my $p1 = new Person("Vinod", "vinod\@vinod.co");
my $p2 = Person->new("Shyam", "shyam\@xmpl.com");

print Dumper $p1;
print Dumper $p2;
# regular style of calling a function in a module
# my $p3 = Person::new("Raj", "raj\@xmpl.com");
