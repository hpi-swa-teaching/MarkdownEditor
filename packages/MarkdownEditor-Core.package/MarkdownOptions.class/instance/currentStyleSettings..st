accessing
currentStyleSettings: aStyleSettings
	currentStyleSettings := aStyleSettings.
	self fontSizeSlider adjustToValue: (aStyleSettings at: 1).