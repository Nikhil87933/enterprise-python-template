.PHONY: install lint format typecheck test check

install:
	pip install -e ".[dev]"

lint:
	ruff check .

format:
	black .

typecheck:
	mypy src

test:
	pytest

check: lint typecheck test