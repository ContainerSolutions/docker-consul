VERSION=0.6

build:
	VERSION=$(VERSION) make -C $(VERSION)/consul
	VERSION=$(VERSION) make -C $(VERSION)/consul-agent
	VERSION=$(VERSION) make -C $(VERSION)/consul-server

clean:
	-VERSION=$(VERSION) make clean -C $(VERSION)/consul
	-VERSION=$(VERSION) make clean -C $(VERSION)/consul-agent
	-VERSION=$(VERSION) make clean -C $(VERSION)/consul-server

push:
	VERSION=$(VERSION) make push -C $(VERSION)/consul
	VERSION=$(VERSION) make push -C $(VERSION)/consul-agent
	VERSION=$(VERSION) make push -C $(VERSION)/consul-server
