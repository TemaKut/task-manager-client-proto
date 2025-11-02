PROTO_FILES := $(shell find ./proto -name "*.proto")

gen.proto.go:
	@protoc \
		-I ./proto \
		--go_out=paths=source_relative:./gen/go \
		--go-grpc_out=paths=source_relative:./gen/go \
		$(PROTO_FILES)
