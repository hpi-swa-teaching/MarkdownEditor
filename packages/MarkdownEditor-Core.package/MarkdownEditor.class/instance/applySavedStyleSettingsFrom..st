open / save
applySavedStyleSettingsFrom: aDictionary

	self optionsMenu 
		currentStyleSettings: (MarkdownStyleSettings newFrom: (aDictionary at: 'style_settings'));
		makeChangeTo: self optionsMenu newStyleSettings.