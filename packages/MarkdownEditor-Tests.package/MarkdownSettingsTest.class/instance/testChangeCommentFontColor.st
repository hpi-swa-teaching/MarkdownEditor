tests
testChangeCommentFontColor

	| options commentBlock styleSettings |
	
	options := MarkdownSettings new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:newStyleSettings | styleSettings := newStyleSettings].

	(self blockStylerOf: options for: 'Comment') handleColorPickerChangeTo: Color green with: nil.
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- Gray', Character cr with: styleSettings).
	commentBlock append: (MarkdownLine newFrom: 'trains -->' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 14}}
		areStyleOf: commentBlock asText.