# 1.1 Think About Time Reflection

In my research about time management and concentration, I learned learned specifically about increasing concentration and awareness of time.  Though I got an overview of many of the strategies mentioned, including meditation, the Pomodoro technique and habit formation, I did some additional research on work/rest intervals and scheduling.  I learned some about Time Boxing, which is working for specific amounts of time.  The Pomodoro technique is an example of time boxing, which recommends setting a timer for 25 minutes, and taking a short break after each period of work.  Using specific work and rest times can help to stay on task and avoid burnout during Phase 0.

At the moment, I don’t use any specific time management strategy, other than trying to stick to a work schedule while working at home and making to-do lists.  This means that I often fall into the trap of trying to do too many things at once, trying to take phone calls, respond to emails and social media posts when I should be focusing on a single task. (I am a writer and a blogger in my spare time, which sometimes demands my attention all the time.)  Once I am focused, though, it’s difficult to know when to stop.  Often I find myself starting a task, and then trying to drag myself away from it several hours later after I have already become much too tired to keep doing my best work.  I like how time boxing says to take a break at the end of a time interval, The rather than when the project is “done”.  (Sometimes, the project is never done.)

I hope to employ a couple of these strategies during Phase 0, including taking time for meditation and mindfulness, as well as setting specific periods of time for work and for rest.  I will start by taking a few minutes each day to outline a plan for the day, including specific work times and tasks to focus on.  I will experiment with different schedules and time intervals until I find the strategy that works best for me, and then I will try to stick with it throughout Phase 0.

# 1.2 The Command Line Reflection

A shell is the system the operating system uses to interpret text commands.  Bash is the shell that the Terminal uses by default to interpret Unix commands.  Though most of this material was a review for me, I found it most challenging to follow along with the introductory video.  Though it was a good introduction to the purpose and origins of Unix, as a beginner I found myself taking frantic notes and trying to follow along with the commands I don’t know.  In the tutorial, I was able to successfully use all the commands, and then take it a step farther, experimenting with more and less, history, the vim editor, and downloading files using wget.

I believe the most important commands are the commands for navigating between files and folders and creating and removing files and directories.  Even knowing these few commands, I already have saved a lot of time navigating my files in the terminal instead of the GUI.

**pwd** - print working directory - displays the current folder you are navigating in

**ls** - lists file contents of the current folder (ls -l lists details and ls -a displays all hidden files)


**cd** - change directory - specify a folder in the current directory to navigate to that folder

**../** - navigates up to the parent directory

**touch** - creates a new file (touch filename.extension)

**mkdir** - creates a new folder (mkdir folder)

**less** - a program to read text files, divides content into pages for easier reading and navigation

**rmdir** - removes a directory (rm -r path/to/directory removes all sub-directories)

**help** - displays a list of available commands

# 1.4 Forking and Cloning Reflection

To back up files on your machine using git version control, you only need a few simple commands.  First, you need to navigate to the folder you would like to save using cd ___ in bash.  This folder can contain text, code, or even image files (though it probably shouldn’t be your home folder, or any folder that contains a large quantity of files and programs.)  Once inside the folder, here are the commands you use.

**git init** - This turns your folder into a git repository

**git status** - This checks the status of your tracked and untracked files

**git add .** - This adds all of your untracked files to the git repository, or you can instead add individual file names if you don’t want to track everything.

**git commit -m “commit message”** - This command commits all the added files to the git repository.  You need to add a commit message, which usually describes the changes made to the files.

To fork a repository, you need to find the repository in GitHub and click “fork” in the upper right-hand corner.  This will copy the entire repository into a new repository associated with your account.  Once you have your own repository, copy and paste the clone link on the right hand side, and use these commands.

Navigate to the folder where you want to store the repository.

**git clone ________** (link from forked repository)

Once you have cloned the repository, you can make any changes on your computer and then push the changes to your own repository using git push.  You will not be able to change the original repository unless you are a collaborator.

Forking a repository allows you to copy existing files to your hard drive as opposed to creating a new repository, where you have to create all the files yourself.

I set up git a few months ago when I took a class on git and the command line.  Since then, I’ve become really familiar with setting up git repositories and pushing them to github.  As I recall, the most challenging part at first was remembering to type the commands in the correct order, and dealing with permissions errors.  The permissions errors, as I recall, were fixed by setting up GitHub to work with my SSH key.  Now, I am still trying to learn some of the more complex tasks, such as creating and merging branches (without creating a lot of merge conflicts).
