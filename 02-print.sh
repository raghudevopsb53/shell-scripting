#!/bin/bash

# We can print a message on screen using two commands in linux
# 1. echo   -> Preferred one , because of less syntax
# 2. printf  -> Have more syntax

echo Hello World
echo Good Morning!!

## Escape sequences
# \n - new line
# \t - new tab
# \e - new color

echo -e "Hello,\n\n\tWelcome to todays session.\n\nRegards,\nRaghu K."

#Hello,
#
#   Welcome to todays session
#
#Regards,
#Raghu K.


## Colors         Foreground
# Red                 31
# Green               32
# Yellow              33
# Blue                34
# Magenta             35
# Cyan                36
