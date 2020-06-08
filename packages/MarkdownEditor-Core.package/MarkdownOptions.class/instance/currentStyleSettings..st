accessing
currentStyleSettings: aStyleSettings
	currentStyleSettings := aStyleSettings.
	self newStyleSettings: aStyleSettings deepCopy.
	
	1 to: 6 do: [:headerLevel | 
		(self fontSizeSliders at: headerLevel) adjustToValue: (aStyleSettings headingFontSizes at: headerLevel).
		(self fontSizeLabels at: headerLevel) contents: ((aStyleSettings headingFontSizes at: headerLevel) asInteger asString).].
	
	1 to: 6 do: [:headerLevel |
		(self fontColorPickers at: headerLevel) originalColor: (aStyleSettings headingColors at: headerLevel).]
	