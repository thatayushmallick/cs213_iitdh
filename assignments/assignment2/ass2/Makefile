CC := gcc
ifeq ($(AREAVERSION), simple)
fileused ?= area1
endif
ifeq ($(AREAVERSION), minimal)
fileused ?= area2
endif
ifeq ($(AREAVERSION), full)
fileused ?= area3
endif
all:
$(CC) -o main main.c area.h $(fileused).c
