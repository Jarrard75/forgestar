// Equation Interpreter or eqint.c holds functions that will be used by the calculator to properly parse input equations. 
// It will check for edquation structure (PEMDAS) as well as parsing numerical values into proper numeric types.
// For example, it should review the contents of the calculator input string in operational order and search for equation components, if it finds parenthesis it should know that there's a secondary equation it must calculate first.
// If it finds a "." it shoould consider the number in which it appears to be a floating point number and it should verify the precision and scale.
// It should evaluate all numbers in the equation and ascertain the correct numeric type it should be inserted too.
// From There it should return these findings to the calculator to decide what to do with them.

#include <stdio.h>

int eq_valid(){
    printf("Equation is Valid");
    return 1;
}
