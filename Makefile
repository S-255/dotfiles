# Windows
ifeq ($(OS),Windows_NT)
	GOOS := windows
	GOMAKEFILE := makefile-win.mk
else
	UNAME_OS := $(shell uname -s)
	ifeq ($(UNAME_OS),Linux)
		GOOS := linux
		GOMAKEFILE := makefile-linux.mk
	else ifeq ($(UNAME_OS),Darwin)
		GOOS := Darwin
		GOMAKEFILE := makefile-mac.mk
	else
		GOOS := unknown
		GOMAKEFILE := makefile-unknown.mk
	endif
endif
