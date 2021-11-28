RONN = ronn

MANSECTION ?= 1
ORGANIZATION ?= dreadlabs.de
MANUAL ?= dotfiles

MANPAGE.md = $(RONN) --organization=$(ORGANIZATION) --manual=$(MANUAL) --roff
MANPAGE.html = $(RONN) --organization=$(ORGANIZATION) --manual=$(MANUAL) --html

%.$(MANSECTION): %.$(MANSECTION).ronn
	$(MANPAGE.md) $<

%.$(MANSECTION).html: %.$(MANSECTION).ronn
	$(MANPAGE.html) $<
