<h1>Common commands</h1>

The command-line consists of a command-prompt and then output from the command. These are some of the more common commands you'll use when trying to navigate and work with a Unix/Linux server.

Before you use these though, you should make sure that you understand some of these [Unix concepts](concepts.md).

!!! note
	Below, when you see a `$`, this is a command-prompt. This is where you'd type an instruction on the command line for the computer to do. This is a simple prompt and yours will probably look a little more complicated. In fact, it may look more like this:

	    username@server:~$

	The only difference between the two forms is that the later includes a little more information (and how to change yours is covered in the [customization](customizing.md#prompt) section). The key thing to know is that anything after the `$` is where you type. In order to execute the command, hit the `return ↵`  or `enter ↵`  key.

## Tips and tricks

### History

When you are typing commands, you will often want to repeat or edit an earlier command. In most shells, you can browse your earlier commands by using your `up ↑` and `down ↓`  arrow keys. You can then move the cursor left and right to edit your command as necessary.

!!! note
	Your entire command history is stored for you in either `$HOME/.bash_history` or `$HOME/.zsh_history`, depending on the shell you are using (see [customizing](customization.md) for more information).

### Tab completion

There are many times when you want to do something to a specific file, but don't want to type a full name. In this case, you can often use `tab ⇥` completion. If you type the first few letters of a file, you can hit the `tab ⇥` key and the shell will finish the rest of the name or command for you. If there is any ambiguity in a name, the shell will complete as much of the name for you as it can. This is a handy shortcut that can save you a lot of typing.

### File globs

Another way to save some time is to use a file glob instead of typing a full filename. For example, if you have a bunch of text files (all ending in `.txt`) that you wanted to copy to a new directory (`dest`), you could type all of the file names one-by-one, or you could use a file glob. A glob is a wildcard character that allow for quick pattern matching when entering filenames.

So, in the above example, instead of typing this following:

    $ cp a.txt b.txt c.txt d.txt ... dest/

You could type this:

    $ cp *.txt dest/


There are two globs you can use: 

* `*` means zero or more of any character. This can be a bit deceiving, because it will also match "zero" wildcard characters. So be careful!
* `?` means one (and only one) wildcard character.


## Navigating the file system

Listing files in the current directory is performed using the `ls` command.
`ls` has many options. By default, the sort order of the files is alphabetical, with capital letters first, then lowercase letters (A-Za-z).
A few of the more common arguments are listed below.

### Listing files

Listing files in the current directory

    $ ls
    file1    file2    file3    file4


Listing the long version... `ls -l`

    $ ls -l
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file1
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file2
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file3
    -rw-r--r--  1 mbreese  staff  0 Mar 31 16:31 file4

What does all of this mean? Let's look at each column...

* Permissions  
    This is probably the most foreign of the fields above. 

    The first character shows if the file is a file or a directory. If this is a directory (see below for an example), then this character will be a `d`. Otherwise, it is a hyphen `-`.

    Next, the fields shows the access level that that each user on the system has to this file. There are 3 main types of permissions:

    * **r** - read  *(can the user read the file?)*
    * **w** - write  *(can the user write to the file?)*
    * **x** - execute  *(can the user run this as a program?)*

    These values are shown in three sets of triplets. The first triplet shows the user (*u*) permissions. This shows the permissions for the *owner*. The next is the group (*g*) permissions. Finally the permissions for all other users (*o*). We'll cover [how to set and change these permissions](#file-permissions) further down, but for now, you just need to know that this is what the `rwx` stand for.

* Links  
    This is the number of references to this file in the filesystem. This will almost always be 1, and can be safely ignored for now.

* Owner  
    This is the username for the user who is listed as the owner of this file. By default they are the user that can set the permissions for other users.

* Group  
    This is the group that is the group owner for a file. Users can belong to more than one group, which makes this a good mechanism for sharing data with others.

* Size
* Modified date
* Filename


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

### Changing directories

Changing to a new directory

    $ cd new_directory

Changing to the parent directory (up a level)  

    $ cd ..

*"`..`" is one of those hidden files, but it is present in every directory, and it always means the parent directory*


Changing to the root directory (this is the highest level)  

    $ cd /


Changing to your home directory (any of these work)

    $ cd
    $ cd ~
    $ cd $HOME

### Absolute vs relative pathnames

*Work in progress*

## Working with files and directories  { #markdown data-toc-label='Files and directories' }

Print your current working directory

	$ pwd
	/home/username


### Directories

Creating a directory

    $ mkdir new_directory

Removing a directory

    $ rmdir bad_directory

!!! danger
    You can remove only empty directories this way. If the directory has files in it, you need to remove the files first. Alternatively you can use this command to remove both the files and the directory:

        $ rm -r bad_directory_with_files

    But be careful -- one wrong finger and you could delete months worth of work. It's always better to test things out first, before running `rm -r`.

### Files

    cp src dest
    mv srv dest
    rm file

### Permissions

## File streams

## Pipes

## Process control

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


Write something to the screen

	$ echo "Hello"
	Hello

You can also write variables, like $SHELL

	$ echo "$SHELL"
	/bin/bash

Or put them together into one line...

	$ echo "My shell is: $SHELL"
	My shell is /bin/bash

Calculate an MD5 hash of a file

	md5 file.txt

!!! note 
	This is useful when comparing two files to see if something changed or a file you've downloaded from a remote server.  `MD5` is an algorithm that takes in a set of data (bytes) and generates a signature. This signature is a fixed size, but will be very different between two different inputs. The algorithm is designed so that any change in the input (as small as one bit) will result in a large difference in the signature.

    `SHA1` is another algorithm that is commonly used for this purpose.

    These are a family of algorithms called one-way hashes. You feed data in one way and get a hash signature out the other. However, there no going the other way -- you can't (easily) feed in a signature and recover what bits were used to generate that signature.
