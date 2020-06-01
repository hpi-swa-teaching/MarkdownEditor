as yet unclassified
handleSave

	| newStyleSettings |
	newStyleSettings := self currentStyleSettings deepCopy.
	newStyleSettings headingFontSizes at: 1 put: self fontSizeSlider getNumericValue asInteger.
	
	self onSave value: newStyleSettings.
	self closeMarkdownOptions.