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
			ifTrue: [self assert: #failedMatch equals: listItem]
			ifFalse: [self assert: testTupel second equals: state newBlock number.
				self assert: testTupel third equals: state newBlock indentation.
				self assert: testTupel fourth equals: state newBlock innerLine]]