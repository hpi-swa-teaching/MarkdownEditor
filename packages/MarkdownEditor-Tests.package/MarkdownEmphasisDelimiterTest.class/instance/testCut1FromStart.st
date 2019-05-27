tests - cutting
testCut1FromStart

	| delimiter cutDelimiter |
	delimiter := MarkdownEmphasisDelimiter new
						content: '***';
						startPosition: 21;
						yourself.
	cutDelimiter := delimiter cutFromStart: 1.
	self assert: '*' equals: cutDelimiter content.
	self assert: 21 equals: cutDelimiter startPosition.
	self assert: '**' equals: delimiter content.
	self assert: 22 equals: delimiter startPosition