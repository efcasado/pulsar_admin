.PHONY: all codegen build clean
.PHONE: deps compile shell

SHELL := BASH_ENV=.rc /bin/bash --noprofile

PULSAR_VERSION ?= 3.0.6

SWAGGER_URL  = https://pulsar.apache.org/swagger/$(PULSAR_VERSION)/swagger.json
SWAGGER_FILE = swagger.json
OAS_FILE     = oas.yaml

## Targets
##=========================≈===============================================

all: codegen build

codegen: lib/pulsar_admin

build: deps compile

##== OpenAPI targets

$(OAS_FILE): $(SWAGGER_FILE)
	curl -XPOST https://converter.swagger.io/api/convert \
		--data-binary @$(SWAGGER_FILE) \
		-H "Content-Type: application/json" \
		-H "Accept: application/yaml" > $(OAS_FILE)

$(SWAGGER_FILE):
	curl -o $(SWAGGER_FILE) $(SWAGGER_URL)

lib/pulsar_admin: $(OAS_FILE)
	openapi-generator-cli generate \
		-i $(OAS_FILE) \
		-g elixir \
		--additional-properties=packageName=pulsar_admin \
		--additional-properties=invokerPackage=PulsarAdmin \
		-o .

##== Elixir targets

deps:
	mix deps.get

compile:
	mix compile