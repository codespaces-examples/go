# install curl, git, ...
# apt-get update
apt-get install -y curl git jq

# install gopls, dlv, hey
echo "Getting development tools"
go install -v golang.org/x/tools/gopls@latest
go install -v github.com/go-delve/delve/cmd/dlv@latest


# vscode-go dependencies 
echo "Getting dependencies for the vscode-go plugin "
# via: https://github.com/microsoft/vscode-go/blob/master/.travis.yml
#go install -v github.com/acroca/go-symbols@latest
#go install -v github.com/cweill/gotests/...@latest
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
