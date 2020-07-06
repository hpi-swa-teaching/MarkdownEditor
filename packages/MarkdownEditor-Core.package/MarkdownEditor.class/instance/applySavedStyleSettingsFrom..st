open / save
applySavedStyleSettingsFrom: aDictionary

	self settingsMenu 
		currentStyleSettings: (MarkdownStyleSettings newFrom: (aDictionary at: 'style_settings'));
		makeChangeTo: self settingsMenu newStyleSettings