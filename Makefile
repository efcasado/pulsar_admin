.PHONY: all codegen build clean
.PHONE: deps compile shell

SHELL := BASH_ENV=.rc /bin/bash --noprofile

PULSAR_VERSION ?= 3.0.6

SWAGGER_URL  = https://pulsar.apache.org/swagger/$(PULSAR_VERSION)/swagger.json
SWAGGER_FILE = swagger.json


## Targets
##=========================≈===============================================

all: codegen build

codegen: lib/pulsar_admin

build: deps compile

##== OpenAPI targets

$(SWAGGER_FILE):
	curl -o $(SWAGGER_FILE) $(SWAGGER_URL)

lib/pulsar_admin: $(SWAGGER_FILE)
	openapi-generator-cli generate \
		-i $(SWAGGER_FILE) \
		-g elixir \
		--skip-validate-spec \
		--additional-properties=packageName=pulsar_admin \
		--additional-properties=invokerPackage=PulsarAdmin \
		-o .

##== Elixir targets

deps:
	mix deps.get

compile:
	mix compile