event handling
themeChanged

	self UniqueInstance currentStyleSettings: 
		(MarkdownStyleSettings setColorsToDefaultOf: self UniqueInstance currentStyleSettings)