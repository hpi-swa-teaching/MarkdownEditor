tests - attributes
testColorFromStartToEnd

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: ' <!-- Gray', Character cr).
	commentBlock append: (MarkdownLine newFrom: 'trains --> Uncolored trains').
	self 
		assertRuns: {1. 20. 17}
		values: {{}. {TextColor color: Color lightGray}. {}}
		areStyleOf: commentBlock asText
	