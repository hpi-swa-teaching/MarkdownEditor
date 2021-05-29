tests
testCancelChangesOnClosing

	| paragraphBlock styleSettings oldStyleSettings|
	
	oldStyleSettings := settings currentStyleSettings.
		
	(self blockStylerOf: settings for: 'Paragraph') handleSliderChangeTo: 17.
	(self blockStylerOf: settings for: 'Paragraph') fontColorPicker adjustTo: Color green.
	
	styleSettings := editor blockTextStyler styleSettings.
	
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 17}}
		areStyleOf: paragraphBlock asText.

	MarkdownSettings close.
	styleSettings := editor blockTextStyler styleSettings.
	paragraphBlock styleSettings: styleSettings. "not needed in project because of block text styler"
	
	 self 
		assertRuns: {20}
		values: {{TextColor color: (oldStyleSettings fontColors at: 'Paragraph'). 
					self fontSized: (oldStyleSettings fontSizes at: 'Paragraph')}}
		areStyleOf: paragraphBlock asText.