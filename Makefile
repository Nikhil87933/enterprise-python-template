.PHONY: install lint lint-fix format check-format typecheck test coverage check fix clean

install:
	pip install -e ".[dev]"

lint:
	ruff check .

lint-fix:
	ruff check . --fix

format:
	black .

check-format:
	black --check .

typecheck:
	mypy src

test:
	pytest

coverage:
	pytest --cov=src --cov-report=html

check: lint check-format typecheck test

fix: format lint-fix

clean:
	rm -rf .pytest_cache .mypy_cache .ruff_cache build dist htmlcov .coverage *.egg-info
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete