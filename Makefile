.PHONY: all
all:

.PHONY: vendor
vendor:
	$(eval $@_TMP_OUT := $(shell mktemp -d -t website-output.XXXXXXXXXX))
	docker buildx bake --set "*.output=type=local,dest=$($@_TMP_OUT)" vendor
	rm -rf ./_vendor
	cp -R "$($@_TMP_OUT)"/* ./
	rm -rf "$($@_TMP_OUT)"/*

.PHONY: build
build:
	$(eval $@_TMP_OUT := $(shell mktemp -d -t website-output.XXXXXXXXXX))
	docker buildx bake --set "*.output=type=local,dest=$($@_TMP_OUT)" build
	rm -rf ./public
	cp -R "$($@_TMP_OUT)"/* ./
	rm -rf "$($@_TMP_OUT)"/*
