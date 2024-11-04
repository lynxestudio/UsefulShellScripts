# Some useful shell scripts

<p align="justify">
Because Linux has its conceptual roots in the older Unix operating system, many applications are designed to be executed from a command line. Linux has two user interfaces: The command Line and the Graphical User Interface (GUI).
On Linux and UNIX systems, a command interpreter is known as a Shell. Linux offers many different shells, however, <i>Bash</i> has become the default standard on Linux.
</p>
<h3>What is a Shell?</h3>
<p align="justify">
A shell is an environment in which we can run commands, programs and others shell scripts. The UNIX operating system popularised many of the ideas about shell scripting.
In UNIX, which is the parent operating system of Linux, you build a small and simple utility and we use it as one link in a string of others to form a command.
The shell acts as the interface between you and the Linux System, allowing you to enter commands for the operating system to execute.
</p>
<div><b>Fig 1. Linux architecture</b></div>
<img src="images/unix_shells.png"/>
<p align="justify">
The basic concept of a shell script is a list of commands, which are listed in the order of execution.
Shell scripts are interpreted. They are ASCII text that is read and execute by the shell interpreter.
When we execute a shell script, the shell interpreter goes through the ASCII text line by line, and executes each statement, as each line is reached from the top to the bottom.
</p>
<h3>Why Use the Command Line?</h3>
<p align="justify">
Linux provides thousands of shell utilities that range from simple programs for creating, examining, and modifying files and files permissions to complex utilities that enable low level capabilities such as file-systems and networking.
</p>
<p align="justify">
You can get the following scripts in the src folder:
</p>
<p>
<ol>
<li><b><a href="src/countFolders.sh">countFolders.sh</a>:</b> Counts the total number of folder in a given path.</li>
<li><b><a href="src/countFiles.sh">countFiles.sh</a>:</b> Counts the total of files in a given path (same logic that countFolder).</li>
<li><b><a href="src/convertLower2Upper.sh">convertLower2Upper.sh</a>:</b> convert the files names of a given path to Uppercase.</li>
<li><b><a href="src/convertUpper2lower.sh">covertUpper2lower.sh</a>:</b> convert the files names of a given path to Lowercase.</li>
<li><b><a href="src/burnfolder2iso.sh">burnfolder2iso.sh</a>:</b> makes the iso image of a given folder.</li>
<li><b><a href="src/PgAgent.sh">PgAgent.sh</a>:</b> starts or stops a PostgreSQL database.</li>
<li><b><a href="src/killmyprocess.sh">killmyprocess.sh</a>:</b> kills a process running by the user.</li>
<li><b><a href="src/showFrequencyWords.sh">showFrequencyWords.sh</a>:</b> Displays the word frequency in a text file.</li>
<li><b><a href="src/showFileSize.sh">showFileSize.sh</a>:</b> Displays the size of the files of a given path.</li>
</ol>
</p>
