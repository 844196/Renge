# Original Makefile created by sasairc (https://github.com/sasairc)

TARGET	:= renge
PREFIX	:= /usr/local
BINDIR	:= $(PREFIX)/bin
DICDIR	:= $(PREFIX)/share/renge
ORIGIN	:= renge.src
DICNME	:= renge-quotes
RM		:= rm

all:	${TARGET}

renge:
	@cat ${ORIGIN} | sed -e 's%PREPRE%${PREFIX}%g' > ${TARGET}
	chmod a+x ${TARGET}

install: ${TARGET}
	install -pd $(BINDIR)
	install -pd $(DICDIR)
	install -pm 755 $(TARGET) $(BINDIR)/
	install -pm 644 $(DICNME) $(DICDIR)/

clean:
	-${RM} -f ${TARGET}
