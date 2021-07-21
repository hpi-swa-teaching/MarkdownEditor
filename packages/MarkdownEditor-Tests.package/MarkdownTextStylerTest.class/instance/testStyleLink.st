tests - emphasis
testStyleLink

	| text fontColor fontSize plugAttr emphasis |
	text := '[link](hpi.de)' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	plugAttr := MarkdownClickableAttribute newFrom: 'hpi.de'.
	emphasis := TextEmphasis underlined.
	self
		assertRunsValues: {(self textAttributesFor: fontColor and: fontSize) union: {emphasis. plugAttr}}
		areStyleOf: text