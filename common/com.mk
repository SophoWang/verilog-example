CLEAN_FILE = $(shell ls | grep -v Makefile)
clean:
	@rm -r ${CLEAN_FILE}

