as yet unclassified
handleSave

	| newStyleSettings |
	newStyleSettings := self currentStyleSettings deepCopy.
	
	1 to: 6 do: [:headerLevel | newStyleSettings headingFontSizes at: headerLevel put: (self fontSizeSliders at: headerLevel) getNumericValue asInteger. ].
	
	self onSave value: newStyleSettings.
	self closeMarkdownOptions.