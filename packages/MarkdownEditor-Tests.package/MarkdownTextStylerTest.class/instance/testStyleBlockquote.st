tests - container
testStyleBlockquote

	| text fontColor fontSize |
	text := '>blockquote' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Blockquote'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Blockquote'.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text