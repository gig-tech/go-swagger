LDFLAGS := "-X github.com/go-swagger/go-swagger/cmd/swagger/commands.Version=$(shell git describe --tags) -X github.com/go-swagger/go-swagger/cmd/swagger/commands.Commit=$(shell git rev-parse HEAD)"

build:
	go build -ldflags $(LDFLAGS) ./cmd/swagger

install:
	go install -ldflags $(LDFLAGS) ./cmd/swagger

clean:
	-rm -f swagger
