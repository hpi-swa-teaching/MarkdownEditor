tests
testChangeCommentFontSizeColor

	| commentBlock styleSettings |

	(self blockStylerOf: settings for: 'Comment') fontColorPicker adjustTo: Color green.
	(self blockStylerOf: settings for: 'Comment') handleSliderChangeTo: 14.
	styleSettings := editor blockTextStyler styleSettings.
	styleSettings fontColors at: 'Comment' put: Color green.
	
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- Gray', Character cr with: styleSettings).
	commentBlock append: (MarkdownLine newFrom: 'trains -->' with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color green. self fontSized: 14}}
		areStyleOf: commentBlock asText.