# Configuration for Golang
# Install:
# - https://go.dev/doc/install

# Sets the root directory for Golang
export GOPATH=${HOME}/core/go

# List of privates repositories, to bypassing public proxy/checksum databases
export GOPRIVATE="gitlab.com/abtasty/*"

# Adds the Go 'bin' directory to the system's PATH, to run compiled Go programs
export PATH=${PATH}:${GOPATH}/bin

