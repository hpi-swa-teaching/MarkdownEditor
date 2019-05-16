tests - cutting
testCut2FromStart

	| delimiter cutDelimiter |
	delimiter := MarkdownDelimiterEmphasis new
						content: '***';
						position: 1;
						yourself.
	cutDelimiter := delimiter cutFromStart: 2.
	self assert: '**' equals: cutDelimiter content.
	self assert: 1 equals: cutDelimiter position.
	self assert: '*' equals: delimiter content.
	self assert: 3 equals: delimiter position