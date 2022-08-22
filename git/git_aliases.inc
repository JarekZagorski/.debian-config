[alias]
	s = status
    fixup = "!git log -n 50 --pretty=format:'%h %s' --no-merges | fzf | cut -c -7 | xargs -o git commit --fixup"
    irebase = "!git log -n 50 --pretty=format:'%h %s' --no-merges | fzf | cut -c -7 | xargs -o git rebase -i --autosquash"
