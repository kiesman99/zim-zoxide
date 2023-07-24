if (( $+commands[zoxide] )); then
    $commands[zoxide] init zsh >| ${0:a:h}/zoxide.zsh
    source ${0:a:h}/zoxide.zsh

    # adds custom CMD+G keybinding to interactively select cd directory
    # based on https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh#L74-L94
    _run-cdi() {
        local dir="$(eval "zoxide query -i")"

        if [[ -z "$dir" ]]; then
            zle redisplay
            return 0
        fi

        zle push-line
        BUFFER="builtin cd -- ${(q)dir}"
        zle accept-line
        local ret=$?
        unset dir
        zle reset-prompt
        return $ret
    }

    zle -N _run-cdi
    bindkey "^G" _run-cdi
fi
