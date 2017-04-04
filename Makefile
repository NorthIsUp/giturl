NAME=giturl

INSTALL?=install -c
PREFIX?=/usr/local
BIN_DIR?=$(DESTDIR)$(PREFIX)/bin
SHARE_DIR?=$(DESTDIR)$(PREFIX)/share/$(NAME)
DOC_DIR?=$(DESTDIR)$(PREFIX)/share/doc/$(NAME)

all:

install:
	$(INSTALL) -d $(SHARE_DIR)
	$(INSTALL) -d $(DOC_DIR)
	cp giturl $(BIN_DIR)
	cp lib/* $(SHARE_DIR)
	cp README.md NEWS LICENSE $(DOC_DIR)

uninstall:
	rm -f $(BIN_DIR)/giturl
	rm -f $(SHARE_DIR)/*
	[ -d $(SHARE_DIR) ] && rmdir $(SHARE_DIR) || true
	rm -f $(DOC_DIR)/README.md $(DOC_DIR)/NEWS $(DOC_DIR)/LICENSE
	[ -d $(DOC_DIR) ] && rmdir $(DOC_DIR) || true

.PHONY: all install uninstall
