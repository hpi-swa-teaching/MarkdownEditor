tests - cutting
testCut1FromEnd

	| delimiter cutDelimiter |
	delimiter := MarkdownDelimiterEmphasis new
						content: '***';
						position: 1;
						yourself.
	cutDelimiter := delimiter cutFromEnd: 1.
	self assert: '*' equals: cutDelimiter content.
	self assert: 3 equals: cutDelimiter position.
	self assert: '**' equals: delimiter content.
	self assert: 1 equals: delimiter position