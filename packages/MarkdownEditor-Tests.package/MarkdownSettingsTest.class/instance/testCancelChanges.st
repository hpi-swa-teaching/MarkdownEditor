tests
testCancelChanges

	| options paragraphBlock styleSettings |
	
	options := MarkdownSettings UniqueInstance.
		
	(self blockStylerOf: options for: 'Paragraph') handleSliderChangeTo: 11.
	(self blockStylerOf: options for: 'Paragraph') handleColorPickerChangeTo: Color brown with: nil.
	styleSettings := editor blockTextStyler styleSettings.
	
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color brown. self fontSized: 11}}
		areStyleOf: paragraphBlock generateText.
	options handleCancel.
	styleSettings := editor blockTextStyler styleSettings.
	paragraphBlock styleSettings: styleSettings. "not needed in project because of block text styler"
	self 
		assertRuns: {20}
		values: {{TextColor color: (originalSettings fontColors at: 'Paragraph'). self fontSized: (originalSettings fontSizes at: 'Paragraph')}}
		areStyleOf: paragraphBlock generateText.