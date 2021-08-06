testLoop
testListContinue: anOrderedCollection
	
	anOrderedCollection do: [:testTupel || state blockquote |
		state := (MarkdownParsingState new)
			currentLine: testTupel first;
			charPos: 0;
			yourself.
		blockquote := (MarkdownBlockquote new) continue: state.
		testTupel size = 1
			ifTrue: [self assert: #failedMatch equals: blockquote]
			ifFalse: [self assert: #matched equals: blockquote.
				self assert: testTupel second equals: state currentLine]]