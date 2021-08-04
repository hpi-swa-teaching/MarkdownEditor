testLoop
testList: anOrderedCollection onBlock: aMarkdownBlock
	
	anOrderedCollection do: [:aTestTupel || state |
		state := (MarkdownParsingState new)
			currentLine: aTestTupel first;
			charPos: 0;
			yourself.
		self assert: aTestTupel second equals: (aMarkdownBlock continue: state)]