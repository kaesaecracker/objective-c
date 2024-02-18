# based on https://gnustep.github.io/resources/documentation/Developer/Make/Manual/gnustep-make_1.html

CC = clang
CCX = clang++

# Include the common variables defined by the Makefile Package
include $(GNUSTEP_MAKEFILES)/common.make

TOOL_NAME = hello
hello_OBJC_FILES=hello.m

-include GNUmakefile.preamble

# Include in the rules for making GNUstep command-line programs
include $(GNUSTEP_MAKEFILES)/tool.make

-include GNUmakefile.postamble
