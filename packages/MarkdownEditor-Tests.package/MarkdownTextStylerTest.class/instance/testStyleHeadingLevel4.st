tests - container
testStyleHeadingLevel4

	| text fontColor fontSize |
	text := '#### heading4' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 4'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 4'.
	
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text