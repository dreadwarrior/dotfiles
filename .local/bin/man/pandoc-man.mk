PANDOC ?= pandoc

MANSECTION ?= 1

MANPAGE.md = $(PANDOC) --standalone $(PANDOCFLAGS) --to man
MANPAGE.html = $(PANDOC) --standalone $(PANDOCFLAGS) --to html

%.$(MANSECTION): %.$(MANSECTION).md
	$(MANPAGE.md) $< -o ./man$(MANSECTION)/$@

%.$(MANSECTION).html: %.$(MANSECTION).md
	$(MANPAGE.html) $< -o ./htmlman$(MANSECTION)/$@
