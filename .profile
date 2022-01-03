eval "$(/opt/homebrew/bin/brew shellenv)"

# Add GOPATH/bin to PATH, for tools which are installed via go get.
if command -V go >/dev/null 2>&1; then
  export PATH="$PATH:$(go env GOPATH)/bin"
fi

. "$HOME/.bashrc"
