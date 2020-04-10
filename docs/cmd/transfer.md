# Transferring data

Getting data onto a remote system and getting results back to your local computer can sometimes be a bit of a challenge. Unsurprisingly, there are a few options available to you, including some good GUI options.

## Command-line with `scp`/`sftp`

#### scp

`scp` can be used to copy files from one location to another. The locations can be local or remote. You can even use scp to transfer files from one server to a different server.

    scp localfile username@server:dest_dir/filename

    scp username@server:dest_dir/filename local_dir/local_file


#### sftp

`sftp` is like `scp`, but interactive. You can connect to the remote SFTP server, list files, get files, put files, etc... This is a command-line program, but it is one way to interactively browse around the files on a remote server.


#### rsync

A final option is `rsync`. Rsync works by finding the files changed between two locations (local and remote), and sending only the changed data between the two. This is particularly helpful when you are transfering a lot of data or trying to keep two computers in sync with each other.

## GUI

### Cyberduck (macOS, Windows)


If you prefer a GUI program, one option is the [Cyberduck](https://cyberduck.io/) program. It is available for Windows and Mac, and can make it easy to upload and download data from a remote server. It is also available for free, which is another bonus (but there is a donation prompt that appears until you register the program for $10).

![Cyberduck browser](img/browser.png)

For more information see here: https://cyberduck.io/


### MobaXterm (Windows)

If you're using Windows, the MobaXterm program can be used to provide both SSH access to remote servers as well as SFTP access to transfer files back and forth.

![MobaXterm SFTP](img/feature-sftp-browser.png)


### Secure ShellFish (iOS)

There is also an option for data transfer when using an iPad or iPhone! You can use the program Secure ShellFish to link a remote server (using SSH/SFTP) to the iOS Files.app.

![Secure ShellFish](img/shellfish.png)
