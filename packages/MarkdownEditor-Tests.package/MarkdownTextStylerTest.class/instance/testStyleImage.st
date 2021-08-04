tests - emphasis
testStyleImage

	| text fontColor fontSize plugAttr emphasis |
	text := '![image](sampleImage.png)' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	plugAttr := MarkdownClickableImageAttribute newFrom: 'sampleImage.png'.
	emphasis := TextEmphasis underlined.
	
	self
		assertRunsValues: {(self textAttributesFor: fontColor and: fontSize) union: {emphasis. plugAttr}}
		areStyleOf: text