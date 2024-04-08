# python_to_executable
small demo to create a python script and convert it to a exe file 

- a bash script and shell script can be created to run an action on a computer, in this case starting a webbrowser and running a youtube video
but would not be converted into an executable without additional code
- the python `subprocess` can be used to write shell/bash commands inside python code
- pyinstaller is then used to convert a python file into a executable
- exe file are considered unsafe by most virus protection software and windows defender and the file will be removed upon downloading, can consider providing the bat file
- research.ipynb can be viewed to look at some of the approaches mentioned 
