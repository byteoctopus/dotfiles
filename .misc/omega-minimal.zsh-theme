# Depends on the git plugin for work_in_progress()

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

git_custom_status() {
	local cb=$(git_current_branch)
	if [ -n "$cb" ]; then
		echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX$(parse_git_dirty)%{$fg_bold[yellow]%}$(work_in_progress)%{$reset_color%}"
	fi
}

PROMPT='[%{$fg[green]%}%n@%m %{$fg[blue]%}%1~$(git_custom_status)%(?.%{$fg[green]%}.%{$fg[red]%})%{$reset_color%}]$ '
