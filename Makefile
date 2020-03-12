  
ifdef PARAM
	COMPONENTS =${PARAM}
else
	COMPONENTS=NaiveHashComponent
endif
all: test

test: install
	cd bin; \
	LD_LIBRARY_PATH=. ./main
clean:
	cd main && ${MAKE} clean COMPONENT=${COMPONENTS}
install:
	${MAKE} clean && cd main && ${MAKE} install COMPONENT=${COMPONENTS}
