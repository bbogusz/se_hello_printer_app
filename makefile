# < aktywacja venv
make deps
make lint
make test
make run

docker_build:
 docker build -t hello-world-printer .

test_smoke:
	curl --fail 127.0.0.1:5000  

lint:
	flake8 hello_world test

.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt