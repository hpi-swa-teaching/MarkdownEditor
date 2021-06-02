tests
testOpenWindowIfNotPresent

	| settingsWindow | 
	
	settingsWindow := settings window.
	settings closeMarkdownOptions.
	self deny: (World submorphs includes: settingsWindow).
	
	settings ifWindowNotPresent: [MarkdownSettings open].
	settingsWindow := 	settings window.
	self assert: (World submorphs includes: settingsWindow).
	