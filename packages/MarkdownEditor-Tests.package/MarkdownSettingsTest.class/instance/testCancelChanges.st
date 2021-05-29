tests
testCancelChanges

	| paragraphBlock styleSettings |
		
	(self blockStylerOf: settings for: 'Paragraph') handleSliderChangeTo: 11.
	(self blockStylerOf: settings for: 'Paragraph') fontColorPicker adjustTo: Color brown.
	styleSettings := editor blockTextStyler styleSettings.
	styleSettings fontColors at: 'Paragraph' put: Color brown.	
	
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color brown. self fontSized: 11}}
		areStyleOf: paragraphBlock asText.
	settings handleCancel.
	styleSettings := editor blockTextStyler styleSettings.
	paragraphBlock styleSettings: styleSettings. "not needed in project because of block text styler"
	self 
		assertRuns: {20}
		values: {{TextColor color: (originalSettings fontColors at: 'Paragraph'). self fontSized: (originalSettings fontSizes at: 'Paragraph')}}
		areStyleOf: paragraphBlock asText.