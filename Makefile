ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 octeon-host-drv-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 octeon-host-drv.conf $(CONFDIR)/kvc/
	install -v -m 755 octeon-host-drv-wrapper.sh $(DESTDIR)/lib/kvc/
	ln -sf ../lib/kvc/octeon-host-drv-wrapper.sh $(DESTDIR)/bin/spkut
