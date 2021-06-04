tests - appearance
testSettingsWindowLabel
	
	| settingsWindow | 
	
	self assert: settings label =  'Markdown Editor - Settings: '.
	
	settingsWindow := 	settings window.
	settings showStylerMorphsFor: 'General'.
	self assert: settingsWindow label = 'Markdown Editor - Settings: General'.
	
	settings showStylerMorphsFor: 'Headings'.
	self assert: settingsWindow label = 'Markdown Editor - Settings: Headings'.
	
	settings showStylerMorphsFor: 'Lists'.
	self assert: settingsWindow label = 'Markdown Editor - Settings: Lists'
	