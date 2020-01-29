# RVM configuration
rvm default

# Load bash_aliases
source $HOME/.bash_aliases

# Set Kubernetes editor
set -x KUBE_EDITOR "code -w"

# Define default editor
set -x EDITOR /usr/bin/code

# Define go valiables
set -x GOROOT /usr/local/go
set -x GOPATH $HOME/go
set PATH $PATH $GOROOT/bin $GOPATH/bin
