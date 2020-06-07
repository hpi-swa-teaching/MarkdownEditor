as yet unclassified
handleSliderChangeFor: aHeaderLevel with: aValue


	(self fontSizeLabels at: aHeaderLevel) contents: aValue asInteger asString.
	
	self newStyleSettings headingFontSizes at: aHeaderLevel put: aValue asInteger.
	self onChange value: self newStyleSettings.