## embARC application makefile template ##
### You can copy this file to your application folder
### and rename it to makefile.
##

##
# Application name
##
APPL ?= example_tmpl

##
# Extended device list
##
EXT_DEV_LIST +=

# Optimization level
# Please refer to toolchain_xxx.mk for this option
OLEVEL ?= O2

##
# Current board and core
##
BOARD ?= emsk
BD_VER ?= 22
CUR_CORE ?= arcem7d

##
# Debugging JTAG
##
JTAG ?= usb

##
# Toolchain
##
TOOLCHAIN ?= mw

##
# Uncomment following options
# if you want to set your own heap and stack size
# Default settings see options.mk
##
#HEAPSZ ?= 8192
#STACKSZ ?= 8192

##
# Uncomment following options
# if you want to add your own library into link process
# For example:
# If you want link math lib for gnu toolchain,
# you need to set the option to -lm
##
#APPL_LIBS ?=

##
# Root path of embARC
##
EMBARC_ROOT = ../../..

##
# Middleware
##
MID_SEL = common

##
# Application source path
##
APPL_CSRC_DIR = .
APPL_ASMSRC_DIR = .

##
# Application include path
##
APPL_INC_DIR = .

##
# Application defines
##
APPL_DEFINES =

##
# Include current project makefile
##
COMMON_COMPILE_PREREQUISITES += makefile

### Options above must be added before include options.mk ###
# Include key embARC build system makefile
override EMBARC_ROOT := $(strip $(subst \,/,$(EMBARC_ROOT)))
include $(EMBARC_ROOT)/options/options.mk
