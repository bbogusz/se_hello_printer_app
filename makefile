# < aktywacja venv
make deps
make lint
make test
make run

lint:
	flake8 hello_world test

.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt