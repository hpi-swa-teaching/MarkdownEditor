tests - emphasis
testStyleIndentedEmphasis

	| text fontColor fontSize emphasis |
	text := ' **bold**' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	emphasis := TextEmphasis bold.
	
	self
		assertRunsValues: 
			{(self textAttributesFor: fontColor and: fontSize).
			(self textAttributesFor: fontColor and: fontSize) union: {emphasis}}
		areStyleOf: text