tests - cutting
testCut2FromEnd

	| delimiter cutDelimiter |
	delimiter := MarkdownDelimiterEmphasis new
						content: '***';
						position: 1;
						yourself.
	cutDelimiter := delimiter cutFromEnd: 2.
	self assert: '**' equals: cutDelimiter content.
	self assert: 2 equals: cutDelimiter position.
	self assert: '*' equals: delimiter content.
	self assert: 1 equals: delimiter position