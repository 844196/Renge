# Original Makefile created by sasairc (https://github.com/sasairc)

TARGET	:=	renge
ORIGIN	:=	renge.src
PREFIX	:=	/usr/local
RM		:=	rm

all:	${TARGET}

renge:
	@cat ${ORIGIN} | sed -e 's%PREPRE%${PREFIX}%g' > ${TARGET}
	chmod a+x ${TARGET}

install: ${TARGET}
	mkdir -p ${PREFIX}/bin
	mkdir -p ${PREFIX}/share/renge
	cp -v ./renge ${PREFIX}/bin
	cp -v ./renge-quotes ${PREFIX}/share/renge

clean:
	-${RM}	-fv	${TARGET}
