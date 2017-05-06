NAME=giturl

INSTALL?=install -c
PREFIX?=/usr/local
BIN_DIR?=$(DESTDIR)$(PREFIX)/bin
SHARE_DIR?=$(DESTDIR)$(PREFIX)/share/$(NAME)
DOC_DIR?=$(DESTDIR)$(PREFIX)/share/doc/$(NAME)

all: giturl

giturl: giturl.main lib/script_preamble lib/script_vars lib/math_functions lib/codes_huffman lib/coding_functions
	cat lib/script_preamble > giturl
	cat lib/script_vars lib/math_functions lib/codes_huffman lib/coding_functions >> giturl
	cat giturl.main >> giturl
	chmod a+x giturl

install: giturl
	$(INSTALL) -d $(SHARE_DIR)
	$(INSTALL) -d $(DOC_DIR)
	cp giturl $(BIN_DIR)
	cp README.md NEWS LICENSE $(DOC_DIR)

uninstall:
	rm -f $(BIN_DIR)/giturl
	rm -f $(DOC_DIR)/README.md $(DOC_DIR)/NEWS $(DOC_DIR)/LICENSE
	[ -d $(DOC_DIR) ] && rmdir $(DOC_DIR) || true
	rm -f $(SHARE_DIR)/*
	[ -d $(SHARE_DIR) ] && rmdir $(SHARE_DIR) || true

.PHONY: all install uninstall
