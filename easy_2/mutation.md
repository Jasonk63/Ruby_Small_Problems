## Mutation

The code will print,

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

This is because array2 may have a different object_id, but is pointing to the same objects
as array1, which are now mutated.

This feature can get you in trouble when you believe changes being made are only affecting 
one variable or array.
It can be avoided by staying away from mutating methods in these scenarios.
