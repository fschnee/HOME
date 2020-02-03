## XDG Base Directory Specification (XDGBDS) fallbacks
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config

## Fix for non XDGBDS-conforming programs
# Rust--rustup
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
# Rust--cargo
export CARGO_HOME="$XDG_DATA_HOME"/cargo
# Haskell--stack
export STACK_ROOT="$XDG_DATA_HOME"/stack
# Wine
export WINEPREFIX="$XDG_DATA_HOME"/wine
# Composer--generally goes to the right place but we
# are making sure the variable is set to add to the PATH
export COMPOSER_HOME="$XDG_DATA_HOME"/composer

## PATH related stuff
PATH="$PATH":"$HOME"/bin
PATH="$PATH":"$HOME"/.local/bin
PATH="$PATH":"$CARGO_HOME"/bin
PATH="$PATH":"$COMPOSER_HOME"/vendor/bin
export PATH
