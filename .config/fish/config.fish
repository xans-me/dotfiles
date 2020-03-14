#
set -x GOPATH ~/Sites/Golang
set -x GOROOT /usr/local/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin
set -x GOPRIVATE "bitbucket.org/tunaiku/*"
#
#
set -U LIBRARY_PATH ~/Sites/personal/libtensor/lib $LIBRARY_PATH
set -u DYLD_LIBRARY_PATH ~/Sites/personal/libtensor/lib $DYLD_LIBRARY_PATH

# Environment variables
set -gx LESS '-F -g -i -M -R -S -w -X -z-4'
set -gx BROWSER open
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.utf-8
set -gx LC_ALL en_US.UTF-8
set -gx FZF_DEFAULT_COMMAND 'ag --hidden --skip-vcs-ignores --ignore .git --ignore vendor --ignore node_modules -g ""'
set -gx LSCOLORS 'Exfxcxdxbxegedabagacad'

# Disable the fish greeting
set fish_greeting ""


alias mkdir='mkdir -p'
alias cdgo='cd $GOPATH/src/github.com/teukumulya-ichsan/'
alias work='cd $HOME/Sites/work'
alias priv='cd $HOME/Sites/personal'


function start_tmux
    if type tmux > /dev/null
        #if not inside a tmux session, and if no session is started, start a new session
        if test -z "$TMUX" ; and test -z $TERMINAL_CONTEXT
            tmux -2 attach; or tmux -2 new-session
        end
    end
end

start_tmux

# Files and directories
alias lsd='ls -l | grep "^d"' # List directory only
alias lsf='ls -l | grep "^-"' # List files only
alias lsh='ls -ld .??*'       # List hidden files only
alias lsah='ls -lAh'          # List all files with human readable size format
alias lst='ls -tl'            # List & order by last modified


set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support no
set -g theme_display_vagrant no
set -g theme_display_docker_machine yes
set -g theme_display_k8s_context yes
set -g theme_display_hg no
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_itle_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -x EDITOR vim
set -Ux LC_ALL en_US.UTF-8
set -Ux LANG en_US.UTF-8t


set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
