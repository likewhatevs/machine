rm -rf ./vendor/github.com/docker/machine
rsync -av --exclude='vendor/' ../machine/ ./vendor/github.com/docker/machine/
go build -o ./machine/bin/docker-machine  -tags "static_build netgo" -ldflags '-extldflags="-static"' -installsuffix netgo ./cmd/docker-machine
