tests - emphasis
testStyleItalic

	| text fontColor fontSize emphasis |
	text := '*italic*' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	emphasis := TextEmphasis italic.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize and: emphasis}
		areStyleOf: text