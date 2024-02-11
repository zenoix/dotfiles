SPACESHIP_PROMPT_ORDER=(
  #time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  #hg             # Mercurial section (hg_branch  + hg_status)
  package        # Package version
  #node           # Node.js section
  #bun            # Bun section
  #deno           # Deno section
  #ruby           # Ruby section
  python         # Python section
  #elm            # Elm section
  #elixir         # Elixir section
  #xcode          # Xcode section
  #swift          # Swift section
  #golang         # Go section
  #perl           # Perl section
  #php            # PHP section
  #rust           # Rust section
  #haskell        # Haskell Stack section
  #scala          # Scala section
  #kotlin         # Kotlin section
  #java           # Java section
  #lua            # Lua section
  #dart           # Dart section
  julia          # Julia section
  #crystal        # Crystal section
  docker         # Docker section
  docker_compose # Docker section
  #aws            # Amazon Web Services section
  #gcloud         # Google Cloud Platform section
  #azure          # Azure section
  venv           # virtualenv section
  conda          # conda virtualenv section
  #dotnet         # .NET section
  #ocaml          # OCaml section
  #vlang          # V section
  #zig            # Zig section
  #purescript     # PureScript section
  #erlang         # Erlang section
  #kubectl        # Kubectl context section
  #ansible        # Ansible section
  #terraform      # Terraform workspace section
  #pulumi         # Pulumi stack section
  #ibmcloud       # IBM Cloud section
  #nix_shell      # Nix shell
  #gnu_screen     # GNU Screen section
  #exec_time      # Execution time
  #async          # Async jobs indicator
  #line_sep       # Line break
  #battery        # Battery level and status
  #jobs           # Background jobs indicator
  #exit_code      # Exit code section
  #sudo           # Sudo indicator
  char           # Prompt character
)

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory

# GIT
# Disable git symbol
SPACESHIP_GIT_SYMBOL="" # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""

# PYTHON
SPACESHIP_PYTHON_PREFIX="python:("
SPACESHIP_PYTHON_SUFFIX=") "
SPACESHIP_PYTHON_SYMBOL=""

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# CONDA
SPACESHIP_CONDA_VERBOSE=false
