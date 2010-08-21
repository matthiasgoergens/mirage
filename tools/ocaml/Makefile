# build an ocaml distribution for the toolchain to use

.PHONY: all clean

OBJDIR=$(CURDIR)/obj
OBJSTAMP=$(OBJDIR)/.stamp
PREFIX ?= /usr/local/mirage
DESTDIR ?= $(CURDIR)/dest

all: $(OBJSTAMP)
	@ :

$(OBJSTAMP):
	rm -rf $(OBJDIR)
	mkdir -p $(OBJDIR)
	cp -R ../../runtime/base/ocaml/ $(OBJDIR)
	cd $(OBJDIR)/ocaml; \
	  ./configure -prefix $(PREFIX) -no-pthread -no-shared-libs -no-tk -no-curses && \
	   $(MAKE) world opt opt.opt
	@touch $@

install.tgz: $(OBJSTAMP)
	rm -rf $(DESTDIR)
	cd $(OBJDIR)/ocaml; \
	  $(MAKE) BINDIR=$(DESTDIR)$(PREFIX)/bin \
	    LIBDIR=$(DESTDIR)$(PREFIX)/lib/ocaml \
	    MANDIR=$(DESTDIR)$(PREFIX)/share/man install
	rm -f $@
	tar -C $(DESTDIR)$(PREFIX) -zcvf $@ .

install: install.tgz
	@ :

clean:
	rm -rf $(OBJDIR)