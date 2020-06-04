as yet unclassified
handleSliderChangeFor: aHeaderLevel with: aValue

	(self fontSizeLabels at: aHeaderLevel) contents: aValue asInteger asString.
	
	self newStyleSettings headingFontSizes at: aHeaderLevel put: (self fontSizeSliders at: aHeaderLevel) getNumericValue asInteger.
	self onChange value: self newStyleSettings.