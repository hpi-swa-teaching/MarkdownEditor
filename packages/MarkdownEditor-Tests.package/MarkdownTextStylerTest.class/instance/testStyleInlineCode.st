tests - emphasis
testStyleInlineCode

	| text fontColor fontSize |
	text := '`code`' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	self
		assertRunsValues: 
			{self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text