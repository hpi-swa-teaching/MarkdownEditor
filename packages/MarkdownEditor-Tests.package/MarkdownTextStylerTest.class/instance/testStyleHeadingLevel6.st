tests - container
testStyleHeadingLevel6

	| text fontColor fontSize |
	text := '###### heading6' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 6'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 6'.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text