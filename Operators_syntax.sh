#Bourne shell didn't originally have any mechanism to perform simple arithmetic operations but it uses external programs, either awk or expr.
#FirstProject
#!/bin/sh

val1=`expr 2 + 2`
echo "Total value : $val"

read X
read Y
echo "$(( $X + $Y ))"
echo "$(( $X - $Y ))"
echo "$(( $X * $Y ))"
echo "$(( $X / $Y ))"


#ge - greater than or equal to and le - less than or equal to. It is very important to understand that all the conditional expressions should be placed inside square braces 
#with spaces around them. For example, [ $a <= $b ] is correct whereas, [$a <= $b] is incorrect.

#[ $a -lt 20 -o $b -gt 100 ] is true.     - logical or
#[ $a -lt 20 -a $b -gt 100 ] is false.    - logical and

# [ -z $a ] is not true.    Checks if the given string operand size is zero; if it is zero length, then it returns true.
# [ -n $a ] is not false.   Checks if the given string operand size is non-zero; if it is nonzero length, then it returns true.
# [ $a ] is not false.      Checks if str is not the empty string; if it is empty, then it returns false.


#	[ -s $file ] is true.     Checks if file has size greater than 0; if yes, then condition becomes true
#[ -e $file ] is true.      Checks if file exists; is true even if file is a directory but exists.

