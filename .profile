# Add brew paths (on ARM macOS, it installs to /opt/homebrew)
if [[ "$(/usr/bin/uname -m)" == "arm64" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

. "$HOME/.bashrc"
