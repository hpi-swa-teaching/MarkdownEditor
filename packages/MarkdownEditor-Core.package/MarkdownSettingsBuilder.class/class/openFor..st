event handling
openFor: aMarkdownSettings

	| settingsWindow |
	settingsWindow := self new
		settings: aMarkdownSettings;
		yourself.
	^ ToolBuilder open: settingsWindow