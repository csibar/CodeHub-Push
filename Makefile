VERISON = 1.0.3

.PHONY: build push test

build:
	docker build -t thedillonb/codehub-push:$(VERISON) .
push: build
	docker push thedillonb/codehub-push:$(VERISON)
test:
	./node_modules/.bin/mocha
