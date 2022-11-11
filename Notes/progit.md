http://git-scm.com/download/win
http://msysgit.github.io/
http://windows.github.com

First-Time Git Setup
--------------------
On Windows systems, Git looks for the .gitconfig file in the $HOME directory
(C:\Users\$USER for most people).

$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com

If you want to override this with a different name or e-mail address for
specific projects, you can run the command without the --global option when
you’re in that project.

$ git config --global core.editor emacs

If you are not familiar with either of
these editors or are on a Windows system, you may need to search for instructions
for how to set up your favorite editor with Git.

Checking Your Settings
----------------------

$ git config --list
$ git config user.name

Getting Help
------------

$ git help <verb>
$ git <verb> --help
$ man git-<verb>

Initializing a Repository in an Existing Directory
--------------------------------------------------
$ git init
$ git add .
$ git commit -m "initial project version"

Go to github.com to create a new repository

git remote add origin https://github.com/santimcs/Learnable-Git-Course.git
Username for 'https://github.com': santimcs
Password for 'https://santimcs@github.com': chutima123

if
fatal: remote origin already exists
then
git remote -v
