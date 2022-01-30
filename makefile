.PHONY: docker

serve:
	@lima nerdctl run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material

docker-build:
	@lima nerdctl build -t test -f Dockerfile .

docker-test:
	@lima nerdctl run --rm -it test 