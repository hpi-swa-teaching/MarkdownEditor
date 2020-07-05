tests - window
testOpenMarkdownOptions

	| editor window optionsMenu |
	
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	optionsMenu := editor openSettings.
	self assert: (World submorphs includes: optionsMenu).
	window delete.
	optionsMenu delete