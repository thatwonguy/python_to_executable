# python_to_executable

### Demo to create a python script and convert it to a exe file.

The idea is to be able to automate tasks on your personal computer by clicking one file instead of having to go to multiple places to get the same task done over and over. In this case we want to automate opening up a web browser and navigating through websites and channels until you finally are able to get to the video/music you want to listen to online. This example can be used for any number of tasks. I encourage you to explore!

1. A **<u>shell script</u>** can be created to run an action on a computer, in this case starting a webbrowser and running a youtube video.
   - a basic shell script is written in this repo called `test.sh`
   - if you write with a shell script and need to be able to execute it, you have to give it executable capabilities with the following command:
    ```
    chmod +x test.sh
    ```
    - this shell script would have to be run in terminal with the following line wherever it is located:
    ```
     ./test.sh
    ```
2. A **<u>batch file</u>** can be used to initiate a command that would otherwise need to be manually written in command prompt / powershell and can contain file manipulation commands like `dir` or `echo`. We have written a bat file to replace the bash script in this example. Saving this bat file to your desktop and clicking it will run whatever is in the bat file. View the batch file in this repo -> `test.bat`.
 
3. A **<u>exe file</u>** can be created as well to carry this out and will also simply need to be clicked by the end-user to initiate.
    1. in this repo we use python to carry this out, but it can be done in any language you like.
    2. we then use the python `subprocess` can be used to write shell/bash commands inside python code
    3. pyinstaller is then used to convert a python file into a executable
        - exe files are considered unsafe by most virus protection software and windows defender and the file will be removed upon downloading if you try to hand this over to someone else to help them out
        - can consider providing your friend a bat file instead but will have to write out the automation steps using cmd or powershell instead of your fav coding language
- research.ipynb can be viewed to look at some of the approaches mentioned 
---
## Outline Of Pros & Cons Between shell/bat/exe file Approach

| Feature                | Shell Script                                        | Batch Script (BAT)                                   | Executable (EXE) File                                |
|------------------------|-----------------------------------------------------|------------------------------------------------------|------------------------------------------------------|
| **Pros**               |                                                     |                                                      |                                                      |
| Cross-platform         | Works on Unix/Linux/macOS                           | Limited to Windows                                   | Can be run on Windows, Unix, and Linux               |
| Script execution speed | Generally fast due to direct execution              | Generally fast due to direct execution               | Fast execution due to precompiled binary             |
| Widely used            | Used for various scripting tasks                    | Commonly used for automating Windows tasks           | Widely used for distributing standalone applications |
| Easy to write          | Simple syntax and powerful features                | Can be written with basic text editors               | Can be developed using various programming languages |
| **Cons**               |                                                     |                                                      |                                                      |
| Platform dependencies  | May have platform-specific commands or behaviors    | Limited to Windows environment                       | Requires separate builds for different platforms     |
| Limited portability    | Less portable to non-Unix systems                   | Not portable to Unix/Linux systems                   | Limited portability to systems without a runtime     |
| Requires interpreter   | Requires compatible shell to be installed           | Dependent on Windows Command Processor (CMD)        | Requires a runtime environment on target system      |
| Debugging complexity   | Debugging can be complex due to shell scripting     | Limited debugging tools and capabilities             | Debugging can be complex due to compiled binaries    |

---


