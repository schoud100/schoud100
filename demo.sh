################BASIC COMMANDS IN SHELL SCRIPTING################################

#!/bin/sh
#Local Variables − A local variable is a variable that is present within the current instance of the shell. It is not available to programs that are started by the shell. 
#They are set at the command prompt.

#Environment Variables − An environment variable is available to any child process of the shell. Some programs need environment variables in order to function correctly. 
#Usually, a shell script defines only those environment variables that are needed by the programs that it runs.

#Shell Variables − A shell variable is a special variable that is set by the shell and is required by the shell in order to function correctly. 
#Some of these variables are environment variables whereas others are local variables.

$echo $$    #PID, of the current shell 

echo $0     #The filename of the current script.
echo $n     #These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument 
            #(the first argument is $1, the second argument is $2, and so on).
    
echo $#     #The number of arguments supplied to a script.

echo $*     #All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.

echo $@     #All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.

echo $?     #The exit status of the last command executed.

echo $!     #The process number of the last background command.


echo "File Name: $0"                            #./test.sh
echo "First Parameter : $1"                     #Zara
echo "Second Parameter : $2"                    #Ali
echo "Quoted Values: $@"                        #Zara Ali
echo "Quoted Values: $*"                        #Zara Ali
echo "Total Number of Parameters : $#"          #2
$echo $?                                        #0


for TOKEN in $*
do
   echo $TOKEN
done


########OUTPUT OF ABOVE COMMAND#############
#$./test.sh Zara Ali 10 Years Old
#Zara
#Ali
#10
#Years
#Old
