testLoop
testList: anOrderedCollection onBlock: aMarkdownBlock2
	
	anOrderedCollection do: [:testTupel || state |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			newBlock: aMarkdownBlock2;
			yourself. 
		self assert: testTupel second equals: (aMarkdownBlock2 continue: state).
		self assert: testTupel third equals: state newBlock content.
		self assert: testTupel fourth equals: state newBlock isOpen]
				