as yet unclassified
testCancelChanges

	| options paragraphBlock styleSettings |
	
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:newStyleSettings | styleSettings := newStyleSettings].
		
	(self blockStylerOf: options for: 'Paragraph') handleSliderChangeTo: 17.
	paragraphBlock := MarkdownParagraph 
		newFrom: (MarkdownLine newFrom: 'i like', Character cr with: styleSettings).
	paragraphBlock append: (MarkdownLine newFrom: 'patterns' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color black. self fontSized: 17}}
		areStyleOf: paragraphBlock asText.
	options handleCancel.
	paragraphBlock styleSettings: styleSettings. "not needed in project because of block text styler"
	self 
		assertRuns: {20}
		values: {{TextColor color: Color black. self fontSized: 14}}
		areStyleOf: paragraphBlock asText.