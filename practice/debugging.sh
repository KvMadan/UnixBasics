#!/bin/bash -xve

# This program demostrats how to enable/disable Debugging in Shell Scripts. 
# x option in Shebang line expands the variables at runtime. 
# v option just prints the line that is being executed. 
# e option exits immediately if a command exits with a non-zero status..  

DEBUG=true
$DEBUG || echo "Debug mode OFF."

TEST="This is a Test Message"
echo "${TEST}"

PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}()'

debug() {
	echo "Executiong: $@"
	$@
}

debug ls

ls /Users/madan.kavarthapu/Downloads/Shell/practice
ls /Users/madan.kavarthapu/Downloads/Shell/practice/fail
ls /Users/madan.kavarthapu/Downloads/Shell

