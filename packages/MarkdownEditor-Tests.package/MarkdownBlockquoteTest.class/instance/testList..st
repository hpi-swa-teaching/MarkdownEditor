testLoop
testList: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state blockquote |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		blockquote := MarkdownBlockquote createNew: state.
		testTupel size = 1 
			ifTrue: [self assert: 0 equals: blockquote]
			ifFalse: [self assert: 1 equals: blockquote.
				self assert: testTupel second equals: state newBlock innerLine]]