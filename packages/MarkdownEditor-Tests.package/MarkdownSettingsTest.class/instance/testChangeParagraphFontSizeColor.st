tests
testChangeParagraphFontSizeColor

	| options paragraphBlock styleSettings|
	
	options := MarkdownSettings UniqueInstance.
		
	(self blockStylerOf: options for: 'Paragraph') handleSliderChangeTo: 17.
	(self blockStylerOf: options for: 'Paragraph') handleColorPickerChangeTo: Color green with: nil.
	styleSettings := editor blockTextStyler styleSettings.
	
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 17}}
		areStyleOf: paragraphBlock asText.
