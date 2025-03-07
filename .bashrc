# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

## go path
export PATH="$PATH:/var/home/maesh/go/bin"

## aqua path
export PATH="$PATH:$(aqua root-dir)/bin"
export AQUA_GLOBAL_CONFIG="/var/home/maesh/.aqua/aqua.yaml"

## node_module path
export PATH="$PATH:/var/home/maesh/.local/share/node_modules/bin"

## n path
export PATH="$PATH:/var/home/maesh/.local/share/n/bin"

## n prefix
export N_PREFIX=~/.local/share/n

## cargo path
export PATH="$PATH:/var/home/maesh/.cargo/bin"

## zoxide
eval "$(zoxide init bash)"

## starship
eval "$(starship init bash)"


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
