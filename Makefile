init initialize:
	@cp --interactive --verbose .skeleton/environment.d/*.env environment.d/ || true
	@cp --interactive --verbose .skeleton/.env . || true
	@touch config/config.yaml config/frigate.db
