tests - extending
testExtend

	| token |
	token := MarkdownEmphasisDelimiter newFor: '*' at: 1.
	token append: $*.
	self assert: '**' equals: token content