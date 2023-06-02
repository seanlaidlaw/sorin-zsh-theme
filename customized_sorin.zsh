# customized sorin.zsh-theme

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }


# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '  '



local return_status="%{$bg[red]%}%(?.. ▲ )%{$reset_color%}"

function shortened_pwd() {
	echo "${PWD%/*}" | sed -e 's;\(/.\)[^/]*;\1;g'
}


PROMPT='${return_status}${vcs_info_msg_0_}%{$fg[blue]%}$(shortened_pwd)/%{$fg[red]%}%C%{$reset_color%} %(!.%{$fg_bold[red]%}#.%{$fg_bold[red]%}❯%{$fg_bold[yellow]%}❯%{$fg_bold[green]%}❯)%{$reset_color%} '

