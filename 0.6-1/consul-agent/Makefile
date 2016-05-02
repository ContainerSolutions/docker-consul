IMAGE=consul-agent

build:
	docker build -t containersol/$(IMAGE):$(VERSION) .
clean:
	docker rmi containersol/$(IMAGE):$(VERSION)
push:
	docker push containersol/$(IMAGE):$(VERSION)
