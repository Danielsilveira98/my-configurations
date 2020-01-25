# RVM configuration
rvm default
set PATH "$PATH:$HOME/.rvm/bin"

# NVM configuration
nvm use default

# Load bash_aliases
source $HOME/.bash_aliases

# Set Kubernetes editor
set -x KUBE_EDITOR "code -w"

# Define default browser
set -x BROWSER "/usr/bin/firefox"

# Define default editor
set -x EDITOR /usr/bin/code

# The next line updates PATH for the Google Cloud SDK.
bass source '$HOME/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '$HOME/google-cloud-sdk/completion.bash.inc'

# Golang configuration
set -x GOROOT "/usr/local/go"
set -x GOPATH "$HOME/Workfolder"
set -x PATH "$GOPATH:$GOROOT/bin:$PATH"

# Openvpn
set -x PATH "$PATH:/usr/sbin/"

# ES_HOSTS
set -x ES_HOSTS "https://ELAsTiC:Q7wHZXE6n6CgR4hZ@es-node-3.plataformasocial.com.br,https://ELAsTiC:Q7wHZXE6n6CgR4hZ@es-node-4.plataformasocial.com.br,https://ELAsTiC:Q7wHZXE6n6CgR4hZ@es-node-5.plataformasocial.com.br"
