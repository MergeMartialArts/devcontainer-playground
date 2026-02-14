UV ?= uv

.PHONY: ruff ruff-fix ruff-format ty

ruff:
	$(UV) run ruff check .

ruff-fix:
	$(UV) run ruff check . --fix

ruff-format:
	$(UV) run ruff format .

ty:
	$(UV) run ty check .
