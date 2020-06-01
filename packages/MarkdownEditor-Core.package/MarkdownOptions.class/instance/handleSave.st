as yet unclassified
handleSave

	| newStyleSettings |
	newStyleSettings := self currentStyleSettings deepCopy.
	newStyleSettings at: 1 put: self fontSizeSlider getNumericValue asInteger.
	self onSave value: newStyleSettings.
	self abandon.