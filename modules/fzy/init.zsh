# Source module files.
source "${0:h}/external/zsh-fzy.plugin.zsh" || return 1

# Get fzy scores and lines options
zstyle -s ':prezto:module:fzy' show-scores '_fzy_scores'
zstyle -s ':prezto:module:fzy' lines '_fzy_lines'

# Set scores yes/no
if [[ -n "$_fzy_scores" ]]; then
  zstyle ':fzy:history' show-scores "$_fzy_scores"
  zstyle ':fzy:file'    show-scores "$_fzy_scores"
  zstyle ':fzy:cd'      show-scores "$_fzy_scores"
  zstyle ':fzy:proc'    show-scores "$_fzy_scores"
fi

# Set number of lines to show
if [[ -n "$_fzy_lines" ]]; then
  zstyle ':fzy:history' lines "$_fzy_lines"
  zstyle ':fzy:file'    lines "$_fzy_lines"
  zstyle ':fzy:cd'      lines "$_fzy_lines"
  zstyle ':fzy:proc'    lines "$_fzy_lines"
fi

#
# Key Bindings
#

bindkey '\ec' fzy-cd-widget
bindkey '^T'  fzy-file-widget
bindkey '^R'  fzy-history-widget
bindkey '^P'  fzy-proc-widget
