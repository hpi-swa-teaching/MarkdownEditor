testLoop
testList: anOrderedCollection onBlock: aMarkdownBlock
	
	anOrderedCollection do: [:testTupel || state |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		self assert: testTupel second equals: (aMarkdownBlock continue: state)]