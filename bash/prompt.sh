# ============================================
#   Skeets Bash Config — Custom Prompt
# ============================================

# Colors
RESET="

\[\e[0m\]

"
BLUE="

\[\e[34m\]

"
GREEN="

\[\e[32m\]

"
YELLOW="

\[\e[33m\]

"
CYAN="

\[\e[36m\]

"

# Git branch function
parse_git_branch() {
    git branch 2>/dev/null | sed -n '/\* /s///p'
}

# Prompt format:
#   username@host  [directory] (git-branch)
#   $
PS1="${GREEN}\u${RESET}@${BLUE}\h ${YELLOW}\w${RESET} ${CYAN}\$(parse_git_branch)${RESET}\n\$ "
