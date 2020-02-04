
export PACKAGE := $(abspath .)
export OUTDIR := $(abspath ../bin)

export GOBIN := ${OUTDIR}:${GOPATH}/bin:${GOBIN}
export PATH := ${PATH}:${GOBIN}
export TMPDIR := /tmp

export TARGET := changeme
export GIT_SSH_COMMAND='ssh -o ControlMaster=no'

.PHONY: all build run mock

all: build run

build:
	go get -d .
	go build -o ${OUTDIR}/${TARGET}

run:
	${OUTDIR}/${TARGET}
