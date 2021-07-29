tests - container
testStyleHeadingLevel5

	| text fontColor fontSize |
	text := '##### heading5' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 5'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 5'.
	
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text