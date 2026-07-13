# ADR-0001: Enterprise Python Project Template

- **Status:** Accepted
- **Date:** 2026-07-13

## Context

A reusable Python project template is required to provide a consistent foundation for future backend, data engineering, and AI/ML projects.

The template should promote modern engineering practices, reduce project setup time, and ensure every new project starts with the same development standards.

## Decision

The project adopts the following standards:

- Python 3.12
- `src/` project layout
- `pyproject.toml`
- Ruff for linting
- Black for formatting
- mypy for static type checking
- pytest for testing
- pre-commit hooks
- GitHub Actions for Continuous Integration
- Branch protection with Pull Requests
- Docker support
- Dependabot for dependency management

## Consequences

### Benefits

- Consistent project structure
- Automated quality checks
- Easier onboarding
- Production-ready defaults
- Reusable across multiple projects

### Trade-offs

- Slightly higher initial setup effort
- Contributors must follow project conventions
- CI adds a small amount of development overhead

## Future Work

This template will serve as the base for future projects, including:

- Data Engineering pipelines
- Backend services
- AI/LLM applications
- Agentic AI systems
