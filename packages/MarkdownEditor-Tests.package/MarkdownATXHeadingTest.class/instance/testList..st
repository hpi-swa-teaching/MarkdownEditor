testLoop
testList: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state heading |
		state := (MarkdownParsingState new) 
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		heading := MarkdownATXHeading createNew: state.
		testTupel size = 1 
			ifTrue: [self assert: #failedMatch equals: heading]
			ifFalse: [self assert: #matchedLeaf equals: heading.
				self assert: testTupel second equals: state newBlock level.
				self assert: testTupel third equals: state newBlock content]]