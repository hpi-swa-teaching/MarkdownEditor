tests - attributes
testColorFromStartToEnd

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: ' <!-- Gray', Character cr.
	commentBlock append: 'trains --> Uncolored trains'.
	self 
		assertRuns: {1. 20. 17}
		values: {{}. {TextColor color: Color lightGray}. {}}
		areStyleOf: commentBlock asText
	