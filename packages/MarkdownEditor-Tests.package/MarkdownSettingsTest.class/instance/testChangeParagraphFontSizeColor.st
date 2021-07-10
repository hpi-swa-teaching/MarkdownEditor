tests
testChangeParagraphFontSizeColor

	| paragraphBlock styleSettings|
	
	(self blockStylerOf: settings for: 'Paragraph') handleSliderChangeTo: 17.
	(self blockStylerOf: settings for: 'Paragraph') fontColorPicker adjustTo: Color green.
	styleSettings := editor blockTextStyler styleSettings.
	styleSettings fontColors at: 'Paragraph' put: Color green.
	
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 17}}
		areStyleOf: paragraphBlock asText.