Excercise 1
1.By referring to Figure 5, identify the prompt, command, options, arguments, and
cursor in each line of Figure 6.

Answer: prompt - [projects]$
command - rm
option -f
argument - foo.text
cursor - line 12 figure 6

2. Most modern terminal programs have the ability to create multiple tabs
(Figure 7), which are useful for organizing a set of related terminal windows.5
By examining the menu items for your terminal program (Figure 8), figure out how
to create a new tab. Extra credit: Learn the keyboard shortcut for creating a new tab.
(Learning keyboard shortcuts for your system is an excellent habit to cultivate.)

Answer: Shell => New Tab => File name
SHIFT + CTRL + T

Excercise 2
1. Write a command that prints out the string “hello, world”. Extra credit:
As in Listing 1, do it two different ways, both with and without using quotation
marks.

Answer: $ echo hello or $ echo 'hello'

2. Type the command echo ’hello (with a mismatched single quote), and then
get out of trouble using the technique from Box 4.

Answer: CTRL + C or ^C

Excercise 3
1. According to the man page, what are the official short and long descriptions
of echo on your system?

Answer: Echo short description - echo -- write arguments to the standard output.
Echo long description - The echo utility writes any specified operands,
separated by single blank  (` ') characters and followed by a newline (`\n')`
character, to the standard output.

2. By reading the man page for echo, determine the command needed to print out
“hello” without the trailing newline, and verify using your terminal that it
works as expected. Hints: To determine the placement of the command-line option,
it may help to refer to Figure 5. By comparing your result with Listing 4 and
Listing 5, you should be able to verify that you’ve used the option properly.
(Note: This exercise may fail when using the default terminal program on some
older versions of macOS. In this case, I recommend installing iTerm (which isn’t
a bad idea anyway).)

Answer: Running echo with a newline (without option).
hello
[~]$
Running echo without a newline (with option).
hello[~]$

Excercise 4
1. Using the up arrow, print to the screen the strings “fee”, “fie”, “foe”,
and “fum” without retyping echo each time.

Answer: $ echo "fee"
$ "fie" (CTRL + ^)
$ "foe" (CTRL + ^)
$ "fum" (CTRL + ^)

2.  Starting with the line in Listing 6, use any combination of ⌃A, ⌃E, arrow
keys, or Option-click to change the occurrences of the short s to the archaic
long s “ſ” in order to match the appearance of the original (Figure 12). In
other words, the argument to echo should read “FRom faireſt creatures we
deſire increaſe,”

Answer: Use CTRL-A, CTRL-E, or arrow keys to navigate and edit

Excercise 5

1. Clear the contents of the current tab.

Answer: $ clear or CTRL + L

2. Open a new tab, execute echo ’hello’, and then exit.

Answer: Press ctrl + alt + t, type echo 'hello', type exit or ctrl-d

Excercise 6
1. Write a command to print the string Use "man echo", including the quotes; i.e.,
take care not to print out Use man echo instead. Hint: Use double quotes in the
inner string, and wrap the whole thing in single quotes.

Answer: $ echo Use''"man echo"''

2. By running man sleep, figure out how to make the terminal “sleep” for 5
seconds, and execute the command to do so.

Answer: Type sleep 5s , type sleep 5000s , press CTRL-C or Esc

3. Execute the command to sleep for 5000 seconds, realize that’s well over an
hour, and then use the instructions from Box 4 to get out of trouble.

Answer: Type sleep 5000s, then type CTRL-C or ^C

Excercise 7
1. Clear the contents of the current tab.

Answer: $ clear or ^L

2. Open a new tab, execute echo ’hello’, and then exit.

Answer: $ echo 'hello'

Excercise 8
1. What’s the command to list all the non-hidden files and directories that
start with the letter “s”?

Answer: $ ls s*

2. What is the command to list all the non-hidden files that contain the string
“onnet”, long-form by reverse modification time? Hint: Use the wildcard operator
at both the beginning and the end.

Answer: $ ls -rtl * "onnet"

3. What is the command to list all files (including hidden ones) by reverse
modification time, in long form?

Answer: $ ls -artl

Excercise 9
1. Using echo and >, make files called line_1.txt and line_2.txt containing the
first and second lines of Sonnet 1, respectively.

Answer: $ echo "From fairest creatures we desire increase," > line_1.txt
        $ echo "That thereby beauty's rose might never die," > line_2.txt

2. Replicate the original sonnet_1.txt (containing the first two lines of the
sonnet) by first redirecting the contents of line_1.txt and then appending the
contents of line_2.txt. Call the new file sonnet_1_copy.txt, and confirm using
diff that it’s identical to sonnet_1.txt. Hint: When there is no diff between
two files, diff simply outputs nothing.

Answer: $ echo "From fairest creatures we desire increase," > sonnet_1_copy.txt
        $ echo "That thereby beauty's rose might never die," >> sonnet_1_copy.txt
        $ diff sonnet_1.txt sonnet_1_copy.txt



3. Use cat to combine the contents of line_1.txt and line_2.txt in reverse order
using a single command, yielding the file sonnet_1_reversed.txt. Hint: The cat
command can take multiple arguments.

Answer: $ cat sonnet_1_copy.txt > sonnet_1_reversed.txt

Excercise 10
1. Use the echo command and the redirect operator > to make a file called foo.txt
containing the text “hello, world”. Then, using the cp command, make a copy of
foo.txt called bar.txt. Using the diff command, confirm that the contents of
both files are the same.

Answer: $ echo "hello, world" > foo.txt
        $ cp foo.txt bar.txt
        $ diff foo.txt bar.txt

2. By combining the cat command and the redirect operator >, create a copy of
foo.txt called baz.txt without using the cp command.

Answer: $ cat foo.txt > baz.txt

3. Create a file called quux.txt containing the contents of foo.txt followed by
the contents of bar.txt. Hint: As noted in Section 2.1.1, cat can take multiple
arguments.

Answer: $ cat foo.txt bar.txt> quux.txt

4. How do rm nonexistent and rm -f nonexistent differ for a nonexistent file?

Answer: rm also known as rm -i removes the nonexistent file indivdually from
that directory without confirmation, rm -f overrides the implicit -i option
and removes all files immediately without having to confirm each one.

Excercise 11
1. By copying and pasting the text from the HTML version of Figure 17, use echo to
make a file called sonnet_1_complete.txt containing the full (original) text of
Shakespeare’s first sonnet. Hint: You may recall getting stuck when echo was
followed by an unmatched double quote (Section 1.2 and Box 4), as in echo "",
but in fact this construction allows you to print out a multi-line block of text.
Just remember to put a closing quote at the end, and then redirect to a file with
the appropriate name. Check that the contents are correct using cat (Figure 14).

Answer: $ echo "FRom faireſt creatures we deſire increaſe,
That thereby beauties Roſe might neuer die,
But as the riper ſhould by time deceaſe,
His tender heire might beare his memory:
But thou contracted to thine owne bright eyes,
Feed’ſt thy lights flame with ſelfe ſubſtantiall fewell,
Making a famine where aboundance lies,
Thy ſelfe thy foe,to thy ſweet ſelfe too cruell:
Thou that art now the worlds freſh ornament,
And only herauld to the gaudy ſpring,
Within thine owne bud burieſt thy content,
And tender chorle makſt waſt in niggarding:
   Pitty the world,or elſe this glutton be,
   To eate the worlds due,by the graue and thee." sonnet_1_complete.txt

   $ cat sonnet_1_complete.txt

2. Type the sequence of commands needed to create an empty file called foo,
rename it to bar, and copy it to baz.

Answer: $ touch foo
        $ mv foo bar
        $ cp bar baz

3. What is the command to list only the files starting with the letter “b”?
Hint: Use a wildcard.

Answer: $ ls b*


4. Remove both bar and baz using a single call to rm. Hint: If those are the
only two files in the current directory that start with the letter “b”, you can
use the wildcard pattern from the previous exercise.

Answer: $ rm ba*

Excercise 12
1. Use the command curl -I https://www.learnenough.com/ to fetch the HTTP header
for the Learn Enough website. What is the HTTP status code for the address? How
does this differ from the status code for learnenough.com (without the https://)?

Answer: 200 ok , status code of learnenough.com is 301 Moved Permanently

2. Using ls, confirm that sonnets.txt exists on your system. How big is it in
bytes? Hint: Recall from Section 2.2 that the “long form” of ls displays a byte
count.

Answer: $ ls -l sonnets.txt, 96635 bytes

3. The byte count in the previous exercise is high enough that it’s more naturally
thought of in kilobytes (often treated as 1000 bytes, but actually equal to
210=1024210=1024 bytes). By adding -h (“human-readable”) option to ls, list the
long form of the sonnets file with a human-readable byte count.

Answer: $ ls -lh sonnets.txt

4. Suppose you wanted to list the files and directories using human-readable
byte counts, all, by reverse time-sorted long-form. What command would you use?
Why might this command be the personal favorite of the author of this tutorial?

Answer: ls -hartl , hartl the authors last name

Excercise 13
1. By piping the results of tail sonnets.txt through wc, confirm that (like head)
the tail command outputs 10 lines by default.

Answer: $ tails sonnets.txt | wc

2. By running man head, learn how to look at the first n lines of the file. By
experimenting with different values of n, find a head command to print out just
enough lines to display the first sonnet in its entirety (Figure 12).

Answer: $ head -n 18 sonnets.txt

3. Pipe the results of the previous exercise through tail (with the appropriate
options) to print out only the 14 lines composing Sonnet 1. Hint: The command
will look something like head -n <i> sonnets.txt | tail -n <j>, where <i> and
<j> represent the numerical arguments to the -n option.

Answer: $ head -n 14 sonnet.txt | tail -n 14

4. One of the most useful applications of tail is running tail -f to view a file
that’s actively changing. This is especially common when monitoring files used
to log the activity of, e.g., web servers, a practice known as “tailing the
log file”. To simulate the creation of a log file, run ping learnenough.com >
learnenough.log in one terminal tab. (The ping command “pings” a server to see
if it’s working.) In a second tab, type the command to tail the log file. (At
this point, both tabs will be stuck, so once you’ve gotten the gist of tail -f
you should use the technique from Box 4 to get out of trouble.)

Answer: $ ping learnenough.com > learnenough.com
        $ tail -f learnenough.log
        CTRL-C

Excercise 14
1. Run less on sonnets.txt. Go down three pages and then back up three pages.
Go to the end of the file, then to the beginning, then quit.

Answer: $ less sonnets.txt
        type ^B 3xs, spacebar 3xs, 1G, q

2. Search for the string “All” (case-sensitive). Go forward a few occurrences,
then back a few occurrences. Then go to the beginning of the file and count the
occurrences by searching forward until you hit the end. Compare your count to
the result of running grep All sonnets.txt | wc. (We’ll learn about grep in Section 3.4.)

Answer: /All, press n, press N, 10 "Alls", typegrep All sonnets.txt | wc

3. Using less and / (“slash”), find the sonnet that begins with the line
“Let me not”. Are there any other occurrences of this string in the Sonnets?
Hint: Press n to find the next occurrence (if any). Extra credit: Listen to the
sonnet in both modern and original pronunciation. Which version’s rhyme scheme is better?

Answer: $ less sonnets.txt, /Let me not, no

4.Because man uses less, we are now in a position to search man pages interactively.
By searching for the string “sort” in the man page for ls, discover the option
to sort files by size. What is the command to display the long form of files
sorted so the largest files appear at the bottom? Hint: Use ls -rtl as a model.

Answer: $ ls -Srtl

Excercise 15
1. By searching man grep for “line number”, construct a command to find the line
numbers in sonnets.txt where the string “rose” appears.

Answer: $ man grep rose sonnets.txt

2. You should find that the last occurrences of “rose” is (via “roses”) on line
2203. Figure out how to go directly to this line when running less sonnets.txt.
Hint: Recall from Table 4 that 1G goes to the top of the file, i.e., line 1.
Similarly, 17G goes to line 17. Etc.

Answer: $ less sonnets.txt, 2203

3. By piping the output of grep to head, print out the first (and only the first)
line in sonnets.txt containing “rose”. Hint: Use the result of the second
exercise in Section 3.2.2.

Answer: $ head grep -n rose sonnets.txt | head -n -1

4. In Listing 18, we saw two additional lines that case-insensitively matched
“rose”. Execute a command confirming that both of the lines contain the string
“Rose” (and not, e.g., “rOSe”). Hint: Use a case-sensitive grep for “Rose”.

Answer: $ grep "Rose" sonnets.txt

5. You should find in the previous exercise that there are three lines matching
“Rose” instead of the two you might have expected from Listing 18. This is
because there is one line that contains both “Rose” and “rose”, and thus shows
up in both grep rose and grep -i rose. Write a command confirming that the
number of lines matching “Rose” but not matching “rose” is equal to the
expected 2. Hint: Pipe the result of grep to grep -v, and then pipe that result
to wc. (What does -v do? Read the man page for grep (Box 5).)

Answer: $ grep Rose sonnets.txt | grep -v rose | wc

Excercise 16
1. The history command prints the history of commands in a particular terminal
shell (subject to some limit, which is typically large). Pipe history to less to
examine your command history. What was your 17th command?

Answer: $ history | less, unname -r

2. By piping the output of history to wc, count how many commands you’ve executed so far.

Answer: $ history | wc, 401

3. One use of history is to grep your commands to find useful ones you’ve used
before, with each command preceded by the corresponding number in the command
history. By piping the output of history to grep, determine the number for the
last occurrence of curl.

Answer: $ history | wc, 402

4. In Box 9, we learned about !! (“bang bang”) to execute the previous command.
Similarly, !n executes command number n, so that, e.g., !17 executes the 17th
command in the command history. Use the result from the previous exercise to
re-run the last occurrence of curl.

Answer: !402 and !401

5. What do the O and L options in Listing 10 mean? Hint: Pipe the output of
curl -h to  less and search first for the string -O and then for the string -L.

Answer: -O = remote-output = write output to a file named as the remote file, -L
= location/follows redirects

Excercise 17
1. Write in words how you might speak the directory ~/foo/bar.

Answer: /Users/Meisha/foo/bar

2. In /Users/bill/sonnets, what is the home directory? What is the username?
Which directory is deepest in the hierarchy?

Answer: Home directory = Users, username = bill, deepest directory = sonnets

3. For a user with username bill, how do /Users/bill/sonnets and ~/sonnets
differ (if at all)?

Answer: /Users/bill/sonnets and ~/sonnets are equal.

Excercise 18
1. What is the option for making intermediate directories as required, so that
you can create, e.g., ~/foo and ~/foo/bar with a single command? Hint: Refer to
the man page for mkdir.

Answer: -p

2. Use the option from the previous exercise to make the directory foo and,
within it, the directory bar (i.e., ~/foo/bar) with a single command.

Answer: mkdir -p ~/foo/bar

3. By piping the output of ls to grep, list everything in the home directory
that contains the letter “o”.

Answer: ls -a | grep O

Excercise 19
1. How do the effects of cd and cd ~ differ (or do they)?

Answer: cd and cd ~ are equal.

2. Change to text_files, then change to second_directory using the “one
directory up” double dot operator ...

Answer: cd text_directory, cd ..

3. From wherever you are, create an empty file called nil in text_files using
whatever method you wish.

Answer: cd text_directory, touch nil

4. Remove nil from the previous exercise using a different path from the one
you used before. (In other words, if you used the path ~/text_files before,
use something like ../text_files or /Users/<username>/text_files.)

Answer: /Users/Meisha/nil

Excercise 20
1. Make a directory foo with a subdirectory bar, then rename the subdirectory to baz.

Answer: mkdir ~/foo/bar, mv ~/foo/bar ~/foo/baz

2. Copy all the files in text_files, with directory, into foo.

Answer: cp -r ../text_files foo

3. Copy all the files in text_files, without directory, into bar.

Answer: cp -r ../text_files/ bar

4. Remove foo and everything in it using a single command.

Answer: rm -rf foo
