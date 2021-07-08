tests - container
testStyleHeadingTematicBreak

	| text fontColor fontSize |
	text := '***' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'thematic break'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'thematic break'.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text