tests - container
testStyleHeadingLevel1

	| text fontColor fontSize |
	text := '# heading1' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 1'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 1'.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text