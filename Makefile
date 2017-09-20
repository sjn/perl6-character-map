SOURCE_DIR := share/onboard/layouts
TARGET_DIR := ${HOME}/.local/${SOURCE_DIR}

SVG_FILES = Perl6-Default.svg Perl6-Arrows.svg Perl6-Emoji.svg Perl6-Greek.svg Perl6-Numbers.svg Perl6-Math.svg
ONBOARD_FILE = Perl6.onboard
FILES = ${SVG_FILES} ${ONBOARD_FILE}

SOURCE_FILES := $(addprefix ${SOURCE_DIR}/, ${FILES})
TARGET_FILES := $(addprefix ${TARGET_DIR}/, ${FILES})

all: install
#	@echo "${SOURCE_FILES}"
#	@echo "-> ${TARGET_DIR}"
#	@echo "=> ${TARGET_FILES}"


install: ${TARGET_DIR} ${TARGET_FILES}

$(TARGET_DIR):
	mkdir -p ${TARGET_DIR}

$(TARGET_FILES): $(SOURCE_FILES)
	cp $+ ${TARGET_DIR}

help:
	@echo Source: $(SOURCE_DIR)
	@echo Target: $(TARGET_DIR)
