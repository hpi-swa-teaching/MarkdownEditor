tests - cutting
testCut2FromEnd

	| delimiter cutDelimiter |
	delimiter := MarkdownEmphasisDelimiter new
						content: '[[[';
						startPosition: 21;
						yourself.
	cutDelimiter := delimiter cutFromEnd: 2.
	
	self assert: '[[' equals: cutDelimiter content.
	self assert: 22 equals: cutDelimiter startPosition.
	
	self assert: '[' equals: delimiter content.
	self assert: 21 equals: delimiter startPosition