-include build.options

INCDEPENDENCY = ../../../../../$(BSPDIR)/include
LIBDEPENDENCY = ../../../../../$(BSPDIR)/lib $(LIBRARIES)

export INCDEPENDENCY
export LIBDEPENDENCY

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
		@cd $(MAKEDIR) && $(MAKE) -s -C $@/src

all: subdirs
	@echo "Finished building BlazeIO"