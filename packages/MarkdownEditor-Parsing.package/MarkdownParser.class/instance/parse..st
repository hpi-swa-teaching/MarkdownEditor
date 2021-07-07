parsing
parse: aString

	self state 
		charPos: 1;
		document: (MarkdownDocument new startPosition: 0);
		tip: self state document;
		lastMatchedContainer: self state document;
		currentLine: ''.
	aString lineIndicesDo: [:start :endWithoutDelimiters :end |
		self parseLine: (aString copyFrom: start to: end)].
	[self state tip notNil] whileTrue: [self finalize: self state tip].
	self startInlineParsing.
	^ self state document