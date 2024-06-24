cd $(fd . `
	--search-path $env:USERPROFILE `
	--search-path $env:LOCALAPPDATA `
	--search-path $env:USERPROFILE\AppData\Roaming `
	--search-path $env:PERSONAL_PROGRAMS `
-t d -d 1 | fzf || pwd)
