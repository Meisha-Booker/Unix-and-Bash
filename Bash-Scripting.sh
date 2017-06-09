Variables Activity
1. A good place to start is to create a simple script which will accept some
command line arguments and echo out some details about them (eg, how many are
there, what is the secone one etc).

Answer: $ touch foo
        $ mv foo bar
        $ cp bar baz

2. Create a script which will print a random word. There is a file containing a
list of words on your system (usually /usr/share/dict/words or /usr/dict/words).
Hint: Piping will be useful here.

Answer:

3. Expand the previous activity so that if a number is supplied as the first
command line argument then it will select from only words with that many
characters. Hint: Grep may be useful here.

Answer: 

4. Take a copy of the two files script1.sh and script2.sh above then experiment
by tweaking them and running them and observing the output. This will help you
get a feel for how exporting variables works.

Answer:

5. Now let us create a script which will take a filename as its first argument
and create a dated copy of the file. eg. if our file was named file1.txt it
would create a copy such as 2017-06-09_file1.txt. (To achieve this you will
probably want to play with command substitution and the command date)

Answer:

Input Activity
1. Create a simple script which will ask the user for a few pieces of information
then combine this into a message which is echod to the screen.

Answer:

2. Add to the previous script to add in some data coming from command line
arguments and maybe some of the other system variables.

Answer:

3. Create a script which will take data from STDIN and print the 3rd line only.

Answer:

4. Now play about with creating a script which will behave as a filter.
Create a script which will rearrange the output of the command ls -l in a
useful way (eg maybe you only print the filename, size and owner) (Hint: awk
can be useful here).

Answer:

Arithmetic Activity
1. Create a simple script which will take two command line arguments and then
multiply them together using each of the methods detailed above.

Answer:

2. Write a Bash script which will print tomorrows date. (Hint: use the command date)

Answer:

3. Remember when we looked at variables we discovered $RANDOM will return a
random number. This number is between 0 and 32767 which is not always the most
useful. Lets write a script which will use this variable and some arithmetic
(hint: play with modulus) to return a random number between 0 and 100.

Answer:

4. Now lets play with the previous script. Modify it so that you can specify as
a command line argument the upper limit of the random number. Can you make it
so that a lower limit can be specified also? eg. if I ran ./random.sh 10 45 it
would only return random numbers between 10 and 45.

Answer:

If Statements
1. Create a Bash script which will take 2 numbers as command line arguments.
It will print to the screen the larger of the two numbers.

Answer:

2. Create a Bash script which will accept a file as a command line argument and
analyse it in certain ways. eg. you could check if the file is executable or
writable. You should print a certain message if true and another if false.

Answer:

3. Create a Bash script which will print a message based upon which day of
the week it is (eg. 'Happy hump day' for Wedensday, 'TGIF' for Friday etc).

Answer:

Loops Activity
1. Create a simple script which will print the numbers 1 - 10 (each on a separate
line) and whether they are even or odd.

Answer:

2. Write a Bash script which will take a single command line argument (a directory)
and will print each entry in that directory. If the entry is a file it will print
its size. If the entry is a directory it will print how many items are in that directory.

Answer:

3. Create a command line version of the game Mastermind. Instead of coloured
marbles you could use letters or numbers or be creative and find another way.

Answer:

4. Create a command line version of the game Tic Tac Toe. Make it so you can
play agains the computer.

Answer:
