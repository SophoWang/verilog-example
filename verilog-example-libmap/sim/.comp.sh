vcs -full64 -f .filelist \
	-libmap ./.libmap_cfg \
	-kdb \
	+vcs+fsdbon \
	-debug_access+all \
	-libmap_verbose \
	-diag libconfig \
	-R -q -top work.tb:config
