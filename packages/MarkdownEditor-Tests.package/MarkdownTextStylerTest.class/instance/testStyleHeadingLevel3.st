tests - container
testStyleHeadingLevel3

	| text fontColor fontSize |
	text := '### heading3' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 3'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 3'.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text