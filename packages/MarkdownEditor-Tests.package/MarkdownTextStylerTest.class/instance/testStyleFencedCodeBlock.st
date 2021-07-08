tests - container
testStyleFencedCodeBlock

	| text fontSize |
	text := ('```', Character cr, 'some code', Character cr,'```') asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Code'.
	self
		assertRunsValues: {self textAttributesFor: fontSize}
		areStyleOf: text