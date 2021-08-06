tests - open close
testCloseMarkdownOptions

	| settingsWindow |
	settingsWindow := settings window.
	self assert: (World submorphs includes: settingsWindow).
	
	settings closeMarkdownOptions.
	self deny: (World submorphs includes: settingsWindow)