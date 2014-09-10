ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

help:
	@echo "make alexandria-web|echo|phemera|ggg"

alexandria-web: FRC
	sudo docker build -t $(USER)/alexandria alexandria-web

echo: FRC
	sudo docker build --no-cache -t $(USER)/echo-builder echo/build && \
	sudo docker run --rm -v "$(ROOT_DIR)/echo/run:/target" $(USER)/echo-builder && \
	sudo docker build -t $(USER)/echo echo/run
	rm echo/run/echo

phemera: FRC
	sudo docker build --no-cache -t $(USER)/phemera-builder phemera/build && \
	sudo docker run --rm -v "$(ROOT_DIR)/phemera/run:/target" $(USER)/phemera-builder && \
	sudo docker build -t $(USER)/phemera phemera/run
	rm -f phemera/run/phemera

ggg: FRC
	sudo docker build --no-cache -t $(USER)/ggg-builder ggg/build && \
	sudo docker run --rm -v "$(ROOT_DIR)/ggg/run:/target" $(USER)/ggg-builder && \
	sudo docker build -t $(USER)/ggg ggg/run
	rm ggg/run/ggg

FRC:
