# MC means "man compile"
MC := pandoc
MC_FLAGS_MAN := --standalone $(PANDOCFLAGS) --to man -o
MC_FLAGS_HTM := --standalone $(PANDOCFLAGS) --to html -o

SRC_DIRS := .

BUILD_DIR_MAN_SECTION1 := ./man1
BUILD_DIR_HTM_SECTION1 := ./htmlman1
BUILD_DIR_MAN_SECTION7 := ./man7
BUILD_DIR_HTM_SECTION7 := ./htmlman7

BUILD_DIRS := 

# Find all the markdown files we want to compile
# Note the single quotes around the * expressions. Make will incorrectly expand these otherwise.
SRCS_SECTION1 := $(shell find $(SRC_DIRS) -name '*.1.md')
SRCS_SECTION7 := $(shell find $(SRC_DIRS) -name '*.7.md')

# String substitution for every section nnn markdown file.
# As an example, hello.1.md turns into ./man1/hello.1
OBJS_MAN_SECTION1 := $(SRCS_SECTION1:%.1.md=$(BUILD_DIR_MAN_SECTION1)/%.1)
OBJS_HTM_SECTION1 := $(SRCS_SECTION1:%.1.md=$(BUILD_DIR_HTM_SECTION1)/%.1.html)
OBJS_MAN_SECTION7 := $(SRCS_SECTION7:%.7.md=$(BUILD_DIR_MAN_SECTION7)/%.7)
OBJS_HTM_SECTION7 := $(SRCS_SECTION7:%.7.md=$(BUILD_DIR_HTM_SECTION7)/%.7.html)

# --- section1: BEGIN
# Build steps for markdown sources
$(BUILD_DIR_MAN_SECTION1)/%.1: %.1.md
	mkdir -p $(dir $@)
	$(MC) $(MC_FLAGS_MAN) $@ $<

$(BUILD_DIR_HTM_SECTION1)/%.1.html: %.1.md
	mkdir -p $(dir $@)
	$(MC) $(MC_FLAGS_HTM) $@ $<

.PHONY: section1
section1: $(OBJS_MAN_SECTION1) $(OBJS_HTM_SECTION1)
# --- section1: END

# --- section7: BEGIN
$(BUILD_DIR_MAN_SECTION7)/%.7: %.7.md
	mkdir -p $(dir $@)
	$(MC) $(MC_FLAGS_MAN) $@ $<

$(BUILD_DIR_HTM_SECTION7)/%.7.html: %.7.md
	mkdir -p $(dir $@)
	$(MC) $(MC_FLAGS_HTM) $@ $<

.PHONY: section7
section7: $(OBJS_MAN_SECTION7) $(OBJS_HTM_SECTION7)
# --- section7: END

index.html: index.md
	$(MC) $(MC_FLAGS_HTM) $@ $<

.PHONY: all
all: index.html section1 section7

.PHONY: clean
clean:
	rm -rf index.html $(BUILD_DIR_MAN_SECTION1) $(BUILD_DIR_HTM_SECTION1) $(BUILD_DIR_MAN_SECTION7) $(BUILD_DIR_HTM_SECTION7)
