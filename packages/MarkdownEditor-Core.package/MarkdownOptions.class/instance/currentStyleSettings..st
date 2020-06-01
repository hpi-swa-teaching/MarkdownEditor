accessing
currentStyleSettings: aStyleSettings
	currentStyleSettings := aStyleSettings.
	
	self fontSizeSlider adjustToValue: (aStyleSettings headingFontSizes at: 1).
	self fontSizeLabel contents: ((aStyleSettings headingFontSizes at: 1) asInteger asString).