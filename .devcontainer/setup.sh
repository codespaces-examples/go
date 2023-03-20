# install curl, git, ...
#apt-get update
apt-get install -y curl git jq

useradd -m user
su user

# install go
VERSION='1.20.2'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

INSTALLED_GO_VERSION=$(go version)
echo "Go version ${INSTALLED_GO_VERSION} is installed"

# install gopls, dlv, hey
echo "Getting development tools"
go install -u golang.org/x/tools/gopls@latest
#go install -u github.com/go-delve/delve/cmd/dlv@latest

# vscode-go dependencies 
echo "Getting dependencies for the vscode-go plugin "
# via: https://github.com/microsoft/vscode-go/blob/master/.travis.yml
#go install -v github.com/acroca/go-symbols@latest
# go install -v github.com/cweill/gotests/...
#go install -v github.com/davidrjenni/reftools/cmd/fillstruct@latest
#go install -v github.com/haya14busa/goplay/cmd/goplay@latest
#go install -v github.com/mdempsky/gocode@latest
#go install -v github.com/ramya-rao-a/go-outline@latest
#go install -v github.com/rogpeppe/godef@latest
#go install -v github.com/sqs/goreturns@latest
#go install -v github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest
#go install -v github.com/zmb3/gogetdoc@latest
#go install -v golang.org/x/lint/golint@latest
#go install -v golang.org/x/tools/cmd/gorename@latest
