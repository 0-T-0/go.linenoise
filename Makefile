.PHONY: build

projectname := linenoise

GOROOT := /usr/lib/golang

wsp := $(shell echo ${WORKSPACE})
ifneq (${wsp} , )
	GOPATH := ${wsp}
else 
	GOPATH := $(shell echo ${GOPATH})
endif

build:
	echo $(GOPATH)
	echo ${GOPATH}
	GOPATH=${GOPATH} go fmt 
	GOPATH=${GOPATH} go build 
	GOPATH=${GOPATH} go install 

# prepare:
# 	workspace="$${WORKSPACE}"; \
# 	if [ "$${workspace}" != "" ]; \
# 		then \
# 			gopath="/var/lib/jenkins/workspace/${projectname}" ; \
# 			pushd $${gopath}; if [ $? -eq 0 ] ;then \
# 			if [ "$${GOPATH}" == "" ]; then export GOPATH="$${gopath}";fi; \
# 			fi; \
# 		fi; 
# 	$(vale GOPATH := $(shell echo ${GOPATH}))


# myhostname := $(shell hostname)
# ifeq (${myhostname}, laptop)
#     GOPATH := /home/sonia/go/project2
# else ifeq (${myhostname}, testmachine)
#     GOPATH := /home/u1234/go/project2
#     GOROOT := /usr/local/go
# endif

#build: build-stamp
#build-stamp: file1.go file2.go file3.go
#    # always format code
#    GOPATH=$(GOPATH) go fmt $^
#    # binary
#    GOPATH=$(GOPATH) go build -o project2 -v $^
#    # docs
#    markdown README.mkd > README.html
#    help2man --no-info --include=help2man.roff --name "Project2" ./project2 > project2.roff
#    man -Tps -l project2.roff > project2-man.ps
#    ps2pdf project2-man.ps project2-man.pdf
#    # mark as done
#    touch $@
