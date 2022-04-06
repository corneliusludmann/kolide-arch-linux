.PHONY: build_and_run
build_and_run: build run

.PHONY: build
build:
	docker build -t kolide-build .

.PHONY: run
run:
	docker run --rm -it -v $(PWD)/out:/out -v $(PWD)/kolide.deb:/home/arch/kolide.deb kolide-build
