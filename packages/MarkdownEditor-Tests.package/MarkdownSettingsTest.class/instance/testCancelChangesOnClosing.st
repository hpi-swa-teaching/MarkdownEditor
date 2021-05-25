tests
testCancelChangesOnClosing

	| options paragraphBlock styleSettings oldStyleSettings|
	
	options := MarkdownSettings UniqueInstance.
	MarkdownSettings open.
	oldStyleSettings := MarkdownSettings UniqueInstance currentStyleSettings.
	
	Transcript show: oldStyleSettings;cr.
	Transcript show: (oldStyleSettings fontSizes at: 'Paragraph');cr.
		
	(self blockStylerOf: options for: 'Paragraph') handleSliderChangeTo: 17.
	(self blockStylerOf: options for: 'Paragraph') fontColorPicker adjustTo: Color green.
	styleSettings := editor blockTextStyler styleSettings.
	
	
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 17}}
		areStyleOf: paragraphBlock asText.

	options closeMarkdownOptions.
	styleSettings := editor blockTextStyler styleSettings.
	paragraphBlock styleSettings: styleSettings. "not needed in project because of block text styler"
	Transcript show: (oldStyleSettings fontSizes at: 'Paragraph');cr.
	self 
		assertRuns: {20}
		values: {{TextColor color: (oldStyleSettings fontColors at: 'Paragraph'). 
					self fontSized: (oldStyleSettings fontSizes at: 'Paragraph')}}
		areStyleOf: paragraphBlock asText.