testLoop
testList: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state paragraph |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		paragraph := MarkdownParagraph createNew: state.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: paragraph]
			ifFalse: [self assert: testTupel second equals: paragraph content]]