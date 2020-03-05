umask 022

if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}"/.bashrc ]; then
    . "${HOME}"/.bashrc
  fi
fi

if [ -d "${HOME}"/bin ] ; then
  export PATH="$PATH":"${HOME}"/bin
fi
if [ -d "${HOME}"/.local/bin ] ; then
  export PATH="$PATH":"${HOME}"/.local/bin
fi

# XDG Base Directory Specification (XDGBDS) fallbacks.
export XDG_DATA_HOME="${HOME}"/.local/share
export XDG_CACHE_HOME="${HOME}"/.cache
export XDG_CONFIG_HOME="${HOME}"/.config
if [ ! -w ${XDG_RUNTIME_DIR:="/run/user/$UID"} ]; then
    # XDG_RUNTIME_DIR is not writable. Setting to /tmp.
    XDG_RUNTIME_DIR=/tmp
fi
export XDG_RUNTIME_DIR

# Rust--rustup
export RUSTUP_HOME="${XDG_DATA_HOME}"/rustup
# Rust--cargo
export CARGO_HOME="${XDG_DATA_HOME}"/cargo
export PATH="$PATH":"${CARGO_HOME}"/bin
# Haskell--stack
export STACK_ROOT="{$XDG_DATA_HOME}"/stack
# Wine
export WINEPREFIX="${XDG_DATA_HOME}"/wine
# Composer--generally goes to the right place but we
# are making sure the variable is set to add to the PATH
export COMPOSER_HOME="${XDG_DATA_HOME}"/composer
export PATH="$PATH":"${COMPOSER_HOME}"/vendor/bin
# Atom
export ATOM_HOME="${XDG_DATA_HOME}"/atom
# Docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}"/docker
# IPython/Jupyter
export IPYTHONDIR="${XDG_CONFIG_HOME}"/jupyter
export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}"/jupyter 
# MySQL
export MYSQL_HISTFILE="${XDG_DATA_HOME}"/mysql_history
# PostgreSQL (XDG_CONFIG_HOME/pg and XDG_CACHE_HOME/pg need to exist)
export PSQLRC="${XDG_CONFIG_HOME}"/pg/psqlrc
export PSQL_HISTORY="${XDG_CACHE_HOME}"/pg/psql_history
export PGPASSFILE="${XDG_CONFIG_HOME}"/pg/pgpass
export PGSERVICEFILE="${XDG_CONFIG_HOME}"/pg/pg_service.conf
# NodeJS
export NODE_REPL_HISTORY="${XDG_DATA_HOME}"/node_repl_history
# Vagrant
export VAGRANT_HOME="${XDG_DATA_HOME}"/vagrant
export VAGRANT_ALIAS_FILE="${XDG_DATA_HOME}"/vagrant/aliases
