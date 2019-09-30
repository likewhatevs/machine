$Env:GOPATH=(resolve-path ../../../../)
go build -o ./bin/docker-machine.exe  -tags "static_build netgo" -ldflags '-extldflags="-static"' -installsuffix netgo ./cmd/docker-machine