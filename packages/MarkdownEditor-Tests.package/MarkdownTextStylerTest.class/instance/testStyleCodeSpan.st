tests - emphasis
testStyleCodeSpan

	| text fontColor fontSize |
	text := '`method`' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	
	self
		assertRunsValues: {(self textAttributesFor: fontColor and: fontSize)}
		areStyleOf: text