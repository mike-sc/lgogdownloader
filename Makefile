#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.127                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

DESTDIR = 
PREFIX = /usr
MANPREFIX = $(PREFIX)/share

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC =  -Iinclude -I/usr/include/rhash -I/usr/include/jsoncpp
CFLAGS =  -std=c++11 -Wall -fexceptions -D_FILE_OFFSET_BITS=64
RESINC = 
LIBDIR = 
LIB =  -lcurl -loauth -ljsoncpp -lhtmlcxx -lboost_system -lboost_filesystem -lboost_regex -lboost_program_options -lboost_date_time -ltinyxml -lrhash
LDFLAGS = 

VERSION = -DVERSION_STRING="\"$(shell sh version.sh)\""
HELP2MAN = $(shell which help2man 2> /dev/null)
MAN_DIR = man
MAN_PAGE = lgogdownloader.1

INC_DEBUG =  $(INC)
CFLAGS_DEBUG =  $(CFLAGS) -g -DDEBUG
RESINC_DEBUG =  $(RESINC)
RCFLAGS_DEBUG =  $(RCFLAGS)
LIBDIR_DEBUG =  $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG =  $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/lgogdownloader

INC_RELEASE =  $(INC)
CFLAGS_RELEASE =  $(CFLAGS) -O2
RESINC_RELEASE =  $(RESINC)
RCFLAGS_RELEASE =  $(RCFLAGS)
LIBDIR_RELEASE =  $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE =  $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/lgogdownloader

OBJ_DEBUG = $(OBJDIR_DEBUG)/main.o $(OBJDIR_DEBUG)/src/api.o $(OBJDIR_DEBUG)/src/downloader.o $(OBJDIR_DEBUG)/src/progressbar.o $(OBJDIR_DEBUG)/src/util.o $(OBJDIR_DEBUG)/src/blacklist.o $(OBJDIR_DEBUG)/src/gamedetails.o $(OBJDIR_DEBUG)/src/gamefile.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/main.o $(OBJDIR_RELEASE)/src/api.o $(OBJDIR_RELEASE)/src/downloader.o $(OBJDIR_RELEASE)/src/progressbar.o $(OBJDIR_RELEASE)/src/util.o $(OBJDIR_RELEASE)/src/blacklist.o $(OBJDIR_RELEASE)/src/gamedetails.o $(OBJDIR_RELEASE)/src/gamefile.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LDFLAGS_DEBUG) $(LIBDIR_DEBUG) $(OBJ_DEBUG) $(LIB_DEBUG) -o $(OUT_DEBUG)

$(OBJDIR_DEBUG)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(VERSION) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)/main.o

$(OBJDIR_DEBUG)/src/api.o: src/api.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/api.cpp -o $(OBJDIR_DEBUG)/src/api.o

$(OBJDIR_DEBUG)/src/downloader.o: src/downloader.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/downloader.cpp -o $(OBJDIR_DEBUG)/src/downloader.o

$(OBJDIR_DEBUG)/src/progressbar.o: src/progressbar.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/progressbar.cpp -o $(OBJDIR_DEBUG)/src/progressbar.o

$(OBJDIR_DEBUG)/src/util.o: src/util.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/util.cpp -o $(OBJDIR_DEBUG)/src/util.o

$(OBJDIR_DEBUG)/src/blacklist.o: src/blacklist.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/blacklist.cpp -o $(OBJDIR_DEBUG)/src/blacklist.o

$(OBJDIR_DEBUG)/src/gamefile.o: src/gamefile.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/gamefile.cpp -o $(OBJDIR_DEBUG)/src/gamefile.o

$(OBJDIR_DEBUG)/src/gamedetails.o: src/gamedetails.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/gamedetails.cpp -o $(OBJDIR_DEBUG)/src/gamedetails.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/src

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release: out_release
ifdef HELP2MAN
	help2man -N -i $(MAN_DIR)/lgogdownloader.supplemental.groff -o $(MAN_DIR)/$(MAN_PAGE) $(OUT_RELEASE)
	gzip -f -9 $(MAN_DIR)/$(MAN_PAGE)
endif

release: before_release out_release after_release

out_release: $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LDFLAGS_RELEASE) $(LIBDIR_RELEASE) $(OBJ_RELEASE) $(LIB_RELEASE) -o $(OUT_RELEASE)

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(VERSION) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

$(OBJDIR_RELEASE)/src/api.o: src/api.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/api.cpp -o $(OBJDIR_RELEASE)/src/api.o

$(OBJDIR_RELEASE)/src/downloader.o: src/downloader.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/downloader.cpp -o $(OBJDIR_RELEASE)/src/downloader.o

$(OBJDIR_RELEASE)/src/progressbar.o: src/progressbar.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/progressbar.cpp -o $(OBJDIR_RELEASE)/src/progressbar.o

$(OBJDIR_RELEASE)/src/util.o: src/util.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/util.cpp -o $(OBJDIR_RELEASE)/src/util.o

$(OBJDIR_RELEASE)/src/blacklist.o: src/blacklist.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/blacklist.cpp -o $(OBJDIR_RELEASE)/src/blacklist.o

$(OBJDIR_RELEASE)/src/gamefile.o: src/gamefile.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/gamefile.cpp -o $(OBJDIR_RELEASE)/src/gamefile.o

$(OBJDIR_RELEASE)/src/gamedetails.o: src/gamedetails.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/gamedetails.cpp -o $(OBJDIR_RELEASE)/src/gamedetails.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/src
	rm -f $(MAN_DIR)/$(MAN_PAGE) $(MAN_DIR)/$(MAN_PAGE).gz

install: release
	install -d $(DESTDIR)/$(PREFIX)/bin/
	install -m 755 $(OUT_RELEASE) $(DESTDIR)/$(PREFIX)/bin/lgogdownloader
	if test -f $(MAN_DIR)/$(MAN_PAGE).gz; then \
		install -d $(DESTDIR)/$(MANPREFIX)/man/man1/; \
		install -m 644 $(MAN_DIR)/$(MAN_PAGE).gz $(DESTDIR)/$(MANPREFIX)/man/man1/$(MAN_PAGE).gz; \
	fi

uninstall:
	rm $(DESTDIR)/$(PREFIX)/bin/lgogdownloader
	if test -f $(DESTDIR)/$(MANPREFIX)/man/man1/$(MAN_PAGE).gz; then \
		rm $(DESTDIR)/$(MANPREFIX)/man/man1/$(MAN_PAGE).gz; \
	fi

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

