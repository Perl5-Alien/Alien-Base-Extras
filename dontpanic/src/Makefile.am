AM_CFLAGS  = -I. -D__DONTPANIC_BUILD
AM_LDFLAGS =

lib_LTLIBRARIES = libdontpanic.la
libdontpanic_la_SOURCES = libdontpanic.c
libdontpanic_la_CFLAGS  = $(AM_CFLAGS)
libdontpanic_la_LDFLAGS = -no-undefined -version-info 0:0:0

include_HEADERS = libdontpanic.h

bin_PROGRAMS = dontpanic
dontpanic_SOURCES = main.c
dontpanic_LDADD   = libdontpanic.la
