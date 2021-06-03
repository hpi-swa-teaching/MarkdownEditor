tests
testCancelChangesOnClosing

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

	options closeBoxHit.
	styleSettings := editor blockTextStyler styleSettings.
	paragraphBlock styleSettings: styleSettings. "not needed in project because of block text styler"
	self 
		assertRuns: {20}
		values: {{TextColor color: (originalSettings fontColors at: 'Paragraph'). self fontSized: (originalSettings fontSizes at: 'Paragraph')}}
		areStyleOf: paragraphBlock asText.