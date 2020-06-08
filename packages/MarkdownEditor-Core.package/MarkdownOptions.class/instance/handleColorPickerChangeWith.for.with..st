as yet unclassified
handleColorPickerChangeWith: aColor for: aHeadingLevel with: aSourceHand

	self newStyleSettings headingColors at: aHeadingLevel put: aColor.
	self onChange value: self newStyleSettings.