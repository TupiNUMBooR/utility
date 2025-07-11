# ~/.zshrc
export ZSH_DISABLE_COMPFIX=true
autoload -Uz compinit && compinit

# Подсветка команд
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Автоподсказки по истории
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Поиск по подстроке ↑
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Цветной prompt
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '
