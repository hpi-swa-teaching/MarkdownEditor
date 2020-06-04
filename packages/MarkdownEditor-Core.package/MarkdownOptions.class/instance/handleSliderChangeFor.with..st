as yet unclassified
handleSliderChangeFor: aHeaderLevel with: aValue

	(self fontSizeLabels at: aHeaderLevel) contents: aValue asInteger asString.