init initialize:
	@shopt -s dotglob && cp --interactive --recursive --verbose .skeleton/* . || true
