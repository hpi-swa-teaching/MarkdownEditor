tests - window
testOpenMarkdownOptions

	| optionsMenu |
	
	optionsMenu := editor openSettings openInWorld.

	self assert: (World submorphs includes: optionsMenu).
	optionsMenu delete