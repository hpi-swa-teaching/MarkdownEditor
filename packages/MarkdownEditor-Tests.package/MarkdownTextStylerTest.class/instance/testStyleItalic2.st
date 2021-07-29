tests - emphasis
testStyleItalic2

	| text fontColor fontSize emphasis |
	text := '_italic_' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	emphasis := TextEmphasis italic.
	
	self
		assertRunsValues: {(self textAttributesFor: fontColor and: fontSize) union: {emphasis}}
		areStyleOf: text