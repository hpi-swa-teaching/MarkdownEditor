tests - container
testStyleHeadingLevel2

	| text fontColor fontSize |
	text := '## heading2' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 2'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 2'.
	
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text