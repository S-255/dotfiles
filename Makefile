os := $(shell uname -s)

all:
ifeq ($(os), Darwin)
	make -f Makefile_mac
else ifeq ($(os), Linux)
	make -f Makefile_linux
else 
	echo error: incompatible
	@exit 1
endif
