files=(
	optionrc
	completionrc
	varrc
	aliasrc
	functionrc
	bindingrc
	promptrc
)

for file in $files; do . $ZDOTDIR/$file; done
