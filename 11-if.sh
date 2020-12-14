#!/bin/bash

# If statement looks in three forms
# 1. Simple if

# if [ expression ] ; then
# commands
# fi

# 2. If-Else

# if [ expression ] ; then
#  commands
# else
#  commands
# fi

# Else-If

# if [ expression1 ]; then
#   commands1
# elif [ expression2 ]; then
#   commands2
# else
#   commands
# fi

# Expressions
# 1. String Comparisions
    # Operators : == , !=
    # Ex: [ abc == abc ] , [ abc != ABC ]
# 2. Numerical Comparisions

# 2. File Tests


if [ "$1" == "DevOps" ]; then
  echo "Welcome to DevOps Training"
elif [ "$1" == "AWS" ]; then
  echo Welcome to AWS Training
fi

