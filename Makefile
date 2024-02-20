.PHONY: push

jupyter:
	poetry run jupyter notebook

ifeq ($(m),)
$(error Please provide a commit message, e.g., make push m="your message here")
endif

push:
	git add -A
	git commit -am "$(m)"
	git push
