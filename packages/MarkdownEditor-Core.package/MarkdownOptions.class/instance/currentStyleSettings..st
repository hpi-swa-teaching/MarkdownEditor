accessing
currentStyleSettings: aStyleSettings
	currentStyleSettings := aStyleSettings.
	
	1 to: 6 do: [:headerLevel | 
		(self fontSizeSliders at: headerLevel) adjustToValue: (aStyleSettings headingFontSizes at: headerLevel).
		(self fontSizeLabels at: headerLevel) contents: ((aStyleSettings headingFontSizes at: headerLevel) asInteger asString).].
	