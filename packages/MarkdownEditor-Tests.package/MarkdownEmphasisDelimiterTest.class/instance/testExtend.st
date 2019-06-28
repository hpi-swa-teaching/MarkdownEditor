tests - extending
testExtend

	| token |
	token := MarkdownEmphasisDelimiter newFor: '*' at: 1.
	token extendWith: $*.
	self assert: '**' equals: token content