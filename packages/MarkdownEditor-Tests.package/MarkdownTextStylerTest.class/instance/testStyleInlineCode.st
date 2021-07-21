tests - emphasis
testStyleInlineCode

	| text fontColor fontSize emphasis |
	text := '`code`' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	emphasis := TextEmphasis bold.
	self
		assertRunsValues: 
			{(self textAttributesFor: fontColor and: fontSize).
			(self textAttributesFor: fontColor and: fontSize) union: {emphasis}. 
			(self textAttributesFor: fontColor and: fontSize)}
		areStyleOf: text