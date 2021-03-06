if status is-interactive
    # Commands to run in interactive sessions can 
end

set -x  DENO_INSTALL "/Users/irene/.deno"
set -x  PATH "$DENO_INSTALL/bin:$PATH"

# Theme
set -g theme_display_hostname yes
set -g theme_display_user yes
set -x color_path 733e56 cd9d9d
set -g fish_prompt_pwd_dir_length 1

# Nightfox Color Palette
set -l foreground b9bfca
set -l selection 3e4655
set -l comment 60728a
set -l red bf616a
set -l orange c9826b
set -l yellow ebcb8b
set -l green a3be8c
set -l purple b48ead
set -l cyan 88c0d0
set -l pink bf88bc

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# aliases
alias ls "ls -p -g"
alias la "ls -a"
# alias ll "ls -l -h"
alias ll "exa -l -g --icons --sort=ext"
alias lla "ll -a"
alias g git
command -qv nvim && alias vim nvim
alias ac arduino-cli


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/irene/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

