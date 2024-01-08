include .env

all: build-docker run-docker

clean: clean-docker

build-docker:
	docker image inspect local/open-interpreter:simple > /dev/null || docker build -t local/open-interpreter:simple .

clean-docker:
	docker image rm local/open-interpreter:simple

run-docker:
	docker run -it --rm -e OPENAI_API_KEY=$(OPENAI_API_KEY) -v $(CURDIR):/root local/open-interpreter:simple interpreter --config_file interpreter.config.yaml
