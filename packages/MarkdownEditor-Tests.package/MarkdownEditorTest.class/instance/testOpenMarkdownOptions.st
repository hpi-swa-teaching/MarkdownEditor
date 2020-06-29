tests - window
testOpenMarkdownOptions

	| editor window optionsMenu |
	
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	optionsMenu := editor openOptions.
	self assert: (World submorphs includes: optionsMenu).
	window delete.
	optionsMenu delete