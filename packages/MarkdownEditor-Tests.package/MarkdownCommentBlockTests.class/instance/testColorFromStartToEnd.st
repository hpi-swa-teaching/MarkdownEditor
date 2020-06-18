tests - attributes
testColorFromStartToEnd

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: ' <!-- Gray', Character cr with: MarkdownStyleSettings default).
	commentBlock append: (MarkdownLine newFrom: 'trains --> Uncolored trains').
	self 
		assertRuns: {1. 20. 17}
		values: {{}. {TextColor color: Color lightGray. self fontSized: 14}. {}}
		areStyleOf: commentBlock asText.
	