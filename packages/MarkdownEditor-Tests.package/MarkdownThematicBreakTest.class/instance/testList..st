testLoop
testList: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state thematicBreak|
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		thematicBreak := MarkdownThematicBreak createNew: state.
		testTupel second
			ifTrue: [self assert: 2 equals: thematicBreak]
			ifFalse: [self assert: 0 equals: thematicBreak]]