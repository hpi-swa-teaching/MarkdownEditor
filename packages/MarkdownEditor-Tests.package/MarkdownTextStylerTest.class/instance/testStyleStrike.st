tests - emphasis
testStyleStrike

	| text fontColor fontSize emphasis |
	text := '~~strike~~' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	emphasis := TextEmphasis struckOut.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize and: emphasis}
		areStyleOf: text