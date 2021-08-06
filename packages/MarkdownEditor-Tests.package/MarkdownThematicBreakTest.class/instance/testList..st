testLoop
testList: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state thematicBreak|
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		thematicBreak := MarkdownThematicBreak createNew: state.
		testTupel second
			ifTrue: [self assert: #matchedLeaf equals: thematicBreak]
			ifFalse: [self assert: #failedMatch equals: thematicBreak]]