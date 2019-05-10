tests
testCutFromEnd

	| delimiter cutDelimiter |
	delimiter := MarkdownDelimiterEmphasis new
						content: '***';
						position: 1;
						yourself.
	cutDelimiter := delimiter cutFromEnd: 2.
	self assert: '**' equals: cutDelimiter content.
	self assert: 2 equals: cutDelimiter position.
	self assert: '*' equals: delimiter content.
	self assert: 1 equals: delimiter position.
	
	delimiter := MarkdownDelimiterEmphasis new
						content: '***';
						position: 1;
						yourself.
	cutDelimiter := delimiter cutFromEnd: 1.
	self assert: '*' equals: cutDelimiter content.
	self assert: 3 equals: cutDelimiter position.
	self assert: '**' equals: delimiter content.
	self assert: 1 equals: delimiter position