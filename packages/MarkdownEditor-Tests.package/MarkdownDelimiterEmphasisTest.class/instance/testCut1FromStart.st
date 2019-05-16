tests - cutting
testCut1FromStart

	| delimiter cutDelimiter |
	delimiter := MarkdownDelimiterEmphasis new
						content: '***';
						position: 1;
						yourself.
	cutDelimiter := delimiter cutFromStart: 1.
	self assert: '*' equals: cutDelimiter content.
	self assert: 1 equals: cutDelimiter position.
	self assert: '**' equals: delimiter content.
	self assert: 2 equals: delimiter position