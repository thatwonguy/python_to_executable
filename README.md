[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# task_automotion_python_executable

### Demo to create a python script and convert it to an exe file.

The idea is to be able to automate tasks on your personal computer by clicking one file instead of having to go to multiple places to get the same task done over and over. In this case we want to automate opening up a web browser and navigating through websites and channels until you finally are able to get to the video/music you want to listen to online. This example can be used for any number of tasks. I encourage you to explore!

> [!NOTE]
> Ideally you want to create a virtual environment(venv) for the individual project you are working on and install all the requirements inside the venv after activating it in your terminal to avoid package installation issues with other projects.

1. A **_shell script_** (mainly used for UNIX/Linux OS) can be created to run an action on a computer, in this case starting a webbrowser and running a youtube video.
   - a basic shell script is written in this repo called `test.sh`
   - if you write with a shell script and need to be able to execute it, you have to give it executable capabilities with the following command:
    ```
    chmod +x test.sh
    ```
    - this shell script would have to be run in terminal with the following line wherever it is located:
    ```
     ./test.sh
    ```
2. A **_batch file_** (used for Windows OS mainly rather than linux) can be used to initiate a command that would otherwise need to be manually written in command prompt / powershell and can contain file manipulation commands like `dir` or `echo`. We have written a bat file to replace the shell script in this repo. Saving this (batch)bat file to your desktop and clicking it will run whatever is in the bat file. View the batch file in this repo -> `test.bat`.
 
3. An **_exe file_** can be created as well to carry this out and will also simply need to be clicked by the end-user to initiate.
    1. in this repo we use python to carry this out, but it can be done in any language you like.
    2. we then use the python `subprocess` library to write shell/bat commands inside python code
    3. pyinstaller library is then used to convert a python file into a executable
        - a number of files and folders will be created. the exe file will be located inside the newly created `dist` folder
        - exe files are considered unsafe by most virus protection software and windows defender and the file will be removed upon downloading if you try to hand this over to someone else to help them out
        - can consider providing your friend a bat file instead but will have to write out the automation steps using cmd or powershell instead of your fav coding language
- The `research.ipynb` inside this repo can be viewed to see how the creation of an exe file can be carried out
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


