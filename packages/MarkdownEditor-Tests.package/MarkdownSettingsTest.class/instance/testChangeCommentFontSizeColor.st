tests
testChangeCommentFontSizeColor

	| options commentBlock styleSettings |
	
	options := MarkdownSettings UniqueInstance.

	(self blockStylerOf: options for: 'Comment') handleColorPickerChangeTo: Color green with: nil.
	(self blockStylerOf: options for: 'Comment') handleSliderChangeTo: 14.
	styleSettings := editor blockTextStyler styleSettings.
	
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- Gray', Character cr with: styleSettings).
	commentBlock append: (MarkdownLine newFrom: 'trains -->' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 14}}
		areStyleOf: commentBlock asText.