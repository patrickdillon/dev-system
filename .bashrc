# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export EDITOR="vi"
export VISUAL="vi"
export PATH=$PATH:/usr/local/go/bin
export OS=/home/padillon/go/src/github.com/openshift
export AWS_PROFILE=openshift-dev
export REQUESTS_CA_BUNDLE=/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem 

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias docker='podman'

# Fix for tilix
# https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ "$TILIX_ID" ] || [ "$VTE_VERSION" ]; then
        source /etc/profile.d/vte.sh
fi
source "$HOME/.cargo/env"
