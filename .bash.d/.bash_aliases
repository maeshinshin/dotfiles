#.bash_aliases
alias cat="bat -p "
alias ali="nvim ~/.bash_aliases && source ~/.bash_aliases"
alias clip="/mnt/c/Windows/system32/clip.exe"

alias l='exa'
alias ls='exa'
alias ll="exa -al"
alias sl="exa"
alias exp="explorer.exe ."
alias kkk="eval $(ssh-agent)"
alias aaa="ssh-add ~/.ssh/key/id_ed25519"
alias jj="kkk; aaa"
alias gb.="goimports -w . && gofmt -s -w . && go build ."
alias gr.="goimports -w . && gofmt -s -w . && go run ."

alias k=kubectl
# oj
alias ojtg="oj t -c \"go run main.go\" -d tests"
alias ojtc="oj t -c \"go run main.cpp\" -d tests"

# acc
alias acs="acc s"
