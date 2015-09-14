#
#    Makefile for renge
#

all: $(TARGET)

$(TARGET): $(TARGET).src
ifeq ($(CMDLINE), 0)
	@echo "  BUILD   $@"
	@cat $< | sed -e "s%PREPRE%$(PREFIX)%g; s%_LIBDIR%$(LIBDIR)%g" > $@
	@chmod a+x $@
else
	cat $< | sed -e "s%PREPRE%$(PREFIX)%g; s%_LIBDIR%$(LIBDIR)%g" > $@
	chmod a+x $@
endif

install-bin: $(TARGET)
	install -pd $(BINDIR)
	install -pm 755 $< $(BINDIR)/

clean:
	-$(RM) -f $(TARGET)

.PHONY: all		\
	install-bin	\
	clean
