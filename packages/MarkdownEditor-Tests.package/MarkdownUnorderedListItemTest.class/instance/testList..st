testLoop
testList: anOrderedCollection
	
	| listItem |
	anOrderedCollection do: [:testTupel || state |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		listItem := MarkdownListItem createNew: state.
		testTupel size = 1 
			ifTrue: [self assert: 0 equals: listItem]
			ifFalse: [self assert: testTupel second equals: state newBlock indention.
				self assert: testTupel third equals: state newBlock innerLine]]