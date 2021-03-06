# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# add global yarn installs to the path
if command -v yarn >/dev/null; then
  PATH="$(yarn global bin):$PATH"
fi

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:.git/safe/../../node_modules/.bin:.git/safe/../../assets/node_modules/.bin:$PATH"

# source asdf for language agnostic version management
test -s "$HOME/.asdf/asdf.sh" && source "$HOME/.asdf/asdf.sh"
test -s "$HOME/.asdf/completions/asdf.bash" && source "$HOME/.asdf/completions/asdf.bash"

export -U PATH
