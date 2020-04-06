<h1>Common commands</h1>

The command-line consists of a command-prompt and then output from the command.


## Navigating the file system

Listing files in the current directory is performed using the `ls` command.
`ls` has many options. By default, the sort order of the files is alphabetical, with capital letters first, then lowercase letters (A-Za-z).
A few of the more common arguments are listed below.

Listing files in the current directory

    $ ls
    file1    file2    file3    file4


Listing the long version... `ls -l`

    $ ls -l
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file1
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file2
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file3
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file4

    (permissions)
                (links)                          (filename)
                  (owner)  (group)  (Modified date)
                                  (size in bytes)


Listing all files (including hidden files). Any file that starts with a `'.'` will be hidden by default. Many programs will write to files that start with a `'.'` to save configuration or temporary data. All directories
contain two directories by default `'.'` and `'..'`. `'.'` is the same as the current directory. So, in the below case `file1` and `./file1` point to the exact same file. `'..'` is the same as the parent directory (up the file hierarchy). `'.'` and `'..'` are also considered hidden files.

    $ ls -la
    drwxr-xr-x   6 mbreese  staff   192 Mar 31 16:31 .
    drwxr-xr-x  38 mbreese  staff  1216 Mar 31 16:30 ..
    -rw-r--r--   1 mbreese  staff     0 Mar 31 16:33 .hidden_file
    -rw-r--r--   1 mbreese  staff     0 Mar 31 16:31 file1
    -rw-r--r--   1 mbreese  staff     0 Mar 31 16:31 file2
    -rw-r--r--   1 mbreese  staff     0 Mar 31 16:31 file3
    -rw-r--r--   1 mbreese  staff     0 Mar 31 16:31 file4


Here are some other `ls` options:

| Arg   | Meaning   |
|----|----|
| -a | Show all files
| -l | Long display (permissions, owner, group, size, date)
| &nbsp; | |
| -1 | show only one file per line (without the 'long' information)
| -h | human readable file sizes (K, M, G) |
| -t | sort by time (newest to oldest) |
| -r | reverse the sort (z-aZ-A or oldest to newest) |
| -R | recursively display files (display this directory, and all sub-directories)


Creating a directory

    $ mkdir new_directory

Changing directories

    $ cd new_directory

Changing to the parent directory (up a level)  

    $ cd ..

*"`..`" is one of those hidden files, but it is present in every directory, and it always means the parent directory*

Removing a directory

    $ rmdir bad_directory

!!! danger
    You can remove only empty directories this way. If the directory has files in it, you need to remove the files first. Alternatively you can use this command to remove both the files and the directory:

        $ rm -r bad_directory_with_files

    But be careful -- one wrong finger and you could delete months worth of work. It's always better to test things out first, before running `rm -r`.

## File streams

## Pipes

## Miscellaneous commands


Change your password

    $ passwd
    <Prompt for your current password>
    <Prompt for your new password>
    <Repeat new password>


Print out the date/time

	$ date
	Tue Mar 31 16:28:20 EDT 2020

Clear the screen

    $ clear

What is your username?  
*(This is more helpful in the context of scripts, but still good to know)*

    $ whoami
    my_username



Writes the phrase "Hello World" to the terminal


	echo "Hello World"
	echo "a;lksdjfl;aksdjf;lkjsdf"
	echo "world"
	pwd
	ls
	ls
	ls -l
	mkdir new_dir
	ls -l
	cd new_dir
	ls -l
	ls -las
	ls -l .
	ls -la .
	ls -la ..
	ls -l ..
	ls -la
	cd ..
	ls -l
	cd new_dir
	date
	echo "hello"
	echo "hello" > file.txt
	cat file.txt
	echo " world" > file2.txt
	cat file.txt file2.txt
	cat file.txt file2.txt > file3.txt
	cat file3.txt
	cat file2.txt
	echo "world" > file2.txt
	cat file2.txt
	cat file.txt file2.txt 
	cat file3.txt
	md5
	echo "hello"
	echo "hello" | md5
	md5 file.txt
	echo "hello" | md5
	echo "hello1" | md5
	echo "hello" | md5
	echo "hell0" | md5
	echo "hell0" | base64
	ls /
	ls -l
	pwd
	ls ~
	ls ~ -l
	ls -l ~
	ls -l ~ | tail -n 5
	ls -l ~ | head -n 5
	ls -l ~ | less
	ls -l ~ | less
	ls 
	ls -l 
	ls -l  
	ls -l   | grep file2
	ls -l   | grep file
	echo "my stdout" | cat
	cat *
	grep world file2.txt
	grep world file3.txt
	grep
	grep world *
	cat * | grep world
	grep world
	grep world *
	mkdir sub_dir
	echo "this is another file with the word world in it" > sub_dir/newfile.txt
	cat sub_dir/newfile.txt
	grep world *
	grep -R world *
	curl
	curl --head --silent google.com
	curl --head --silent google.com | grep Location
	curl google.com
	curl -L google.com
	curl -L google.com | less
	ssh asclab-c1
	curl asclab.ucsf.edu/test.csv
	curl -L asclab.ucsf.edu/test.csv
	curl -L asclab.ucsf.edu/test.csv
	clear
	curl -L asclab.ucsf.edu/test.csv
	curl -L asclab.ucsf.edu/test.csv | less 
	curl -L asclab.ucsf.edu/test.csv | less -S 
	curl -L asclab.ucsf.edu/test.csv | grep MYC
	curl -L asclab.ucsf.edu/test.csv | grep -w MYC
	curl -L asclab.ucsf.edu/test.csv | grep -w '^MYC'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -w '^MYC'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -w 'ABL'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -w 'ABL1'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -w 'abl1'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -wI 'ABL1'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -wI 'abl1'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -wi 'abl1'
	curl -L --silent asclab.ucsf.edu/test.csv | grep -wi 'abl1' | less -S
	ssh asclab-c1.ucsf.edu
