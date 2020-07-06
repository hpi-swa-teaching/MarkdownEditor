tests - extending
testType

	| token |
	token := MarkdownEmphasisDelimiter newFor: '*' at: 1.
	token append: $*.
	self assert: token type equals: 'EmphasisDelimiter'