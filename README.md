# Some useful shell scripts

<h3>What is a Shell?</h3>
<p align="justify">
A shell is an environment in which we can run commands, programs and others shell scripts. The UNIX operating system popularized many of the ideas about shell scripting.
In UNIX, which is the parent operating system of Linux, you build a small and simple utility and we use it as one link in a string of others to form a command.
The shell acts as the interface between you and the Linux System, allowing you to enter commands for the operating system to execute.
</p>
<div><b>Fig 1. Linux architecture</b></div>
<img src="images/unix_shells.png"/>
<p align="justify">
The basic concept of a shell script is a list of commands, which are listed in the order of execution.
Shell scripts are interpreted. They are ASCII text that is read and execute by the shell interpreter.
When we execute a shell script, the shell intepreter goes through the ASCII text line by line, and executes each statement, as each line is reached from the top to the bottom.
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
