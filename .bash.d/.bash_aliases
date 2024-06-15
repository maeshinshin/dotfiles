#.bash_aliases
# shortcut
alias ali="nvim ~/.bash_aliases && source ~/.bash_aliases"
alias figlet="figlet"

# altanative
alias l='exa'
alias ls='exa'
alias ll="exa -al"
alias sl="exa"
alias cat="bat"
alias df='duf'
alias exp="explorer.exe ."
alias kkk="eval $(ssh-agent)"
alias aaa="ssh-add ~/.ssh/key/id_ed25519"
alias jj="kkk ; aaa"
# go
alias gb="goimports -w . && gofmt -s -w . && go build ."
alias gr="goimports -w . && gofmt -s -w . && go run ."

# kubectl
alias k=kubectl

# oj
alias ojtg="oj t -c \"go run main.go\" -d tests"
alias ojtc="oj t -c \"go run main.cpp\" -d tests"

# acc
alias acs="acc s"
