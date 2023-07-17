# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="1.20"
FROM mcr.microsoft.com/vscode/devcontainers/go:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install protobuf-compiler

# install gopls, dlv
RUN echo "Getting development tools"
RUN go install -v golang.org/x/tools/gopls@latest
RUN go install -v github.com/go-delve/delve/cmd/dlv@latest

# vscode-go dependencies 
# via: https://github.com/microsoft/vscode-go/blob/master/.travis.yml
RUN echo "Getting dependencies for the golang.go plugin "
RUN go install -v github.com/acroca/go-symbols@latest
RUN go install -v github.com/cweill/gotests/...@latest
RUN go install -v github.com/davidrjenni/reftools/cmd/fillstruct@latest
RUN go install -v github.com/haya14busa/goplay/cmd/goplay@latest
RUN go install -v github.com/mdempsky/gocode@latest
RUN go install -v github.com/ramya-rao-a/go-outline@latest
RUN go install -v github.com/rogpeppe/godef@latest
RUN go install -v github.com/sqs/goreturns@latest
RUN go install -v github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest
RUN go install -v github.com/zmb3/gogetdoc@latest
RUN go install -v golang.org/x/lint/golint@latest
RUN go install -v golang.org/x/tools/cmd/gorename@latest
