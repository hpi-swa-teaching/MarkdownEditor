tests - window
testOpenMarkdownOptions

	| optionsMenu |
	
	optionsMenu := editor openSettings.
	self assert: (World submorphs includes: optionsMenu).
	optionsMenu delete