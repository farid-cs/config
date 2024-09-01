files=(
	optionrc
	completionrc
	varrc
	aliasrc
	functionrc
	bindingrc
	promptrc
)

for file in $files; do . ~/.config/zsh/$file; done
