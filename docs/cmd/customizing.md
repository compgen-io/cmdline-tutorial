# Customizing your shell

The shell is just another program that runs to manage your command-line access. In fact, the command prompt you use is basicall treated like a [shell script](concepts.md#scripts) where each line executed as it is being written. Because of this, it is highly customizable.

If you're using the `bash` shell (and this is the default on many systems), 
then you can edit the file `$HOME/.bashrc` to customize your shell.

Another common shell is `zsh` (the new default on macOS). If you are using this shell,
then you can edit the file `$HOME/.zshrc`.

!!! note
    There are a few zsh special functions, but zsh can be considered a close relative of bash. Most (all?) of the commands from bash will work in zsh (but not vice-versa).

#### How do you find out which one you're using?

There are a few methods, but the easiest is to run this snippet:

    $ echo $SHELL

It will print out the exact program that you are currently using for your shell. So long as you are
using either bash or zsh, this page will work for you. If you have a different shell (csh, tcsh, etc),
then you're on your own. 😀

## `.bashrc`

This is a tiny bit of bash code that gets run whenever you start a new session, whether that be because you login to the system (for remote access) or if you open a new Terminal window on your local machine. It is common to put any changes to the default bash environment in this file.

!!! note
    There are a few configuration files available to users to adjust the bash environment. These are all included at different times, so it can be a bit confusing as to which file to edit. However, `$HOME/.bashrc` is almost always the included, so if you start here, it will almost always work!

### Path

The `$PATH` setting determines where bash will look for programs. For example, most of the command-line programs the OS provides are located in either `/bin` or `/usr/bin`. So, if you want to run the `date` program, bash will check each directory in your `$PATH` to see if it contains an executable program called `date`. This is the most common setting you'll want to adjust to customize your shell.

`$PATH` is a colon (`:`) delimited variable that contains a list of these directories to check.

For example, here is a common `$PATH`:

    PATH=/bin:/usr/bin:$HOME/local/bin


You can see your path if you print this variable:

    $ echo $PATH

If you want to add a directory to your `$PATH`, you can add this line to your `$HOME/.bashrc` file:

    export PATH=$PATH:/new/dir

What this does is set the variable `$PATH` equal to `$PATH:/new/dir`, which is to say, the old `$PATH` plus the directory `/new/dir`. The command `export` tells bash that this variable should be included in the environment, instead of a variable that is local to only the script being executed. For the purposes of setting the `$PATH` variable, you almost always want to export it as opposed to just setting it.

## Aliases

## Prompt
