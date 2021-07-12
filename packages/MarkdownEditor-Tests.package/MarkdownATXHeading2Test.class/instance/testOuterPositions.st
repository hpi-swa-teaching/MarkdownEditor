tests - positioning
testOuterPositions

	| parsingTree testDict |
	parsingTree := self parser parse: '# hallo
# dklasfj #'.

	testDict := Dictionary newFrom: {#children -> 
			{Dictionary newFrom: {#startPosition -> 1.#endPosition -> 8}.
			Dictionary newFrom: {#startPosition -> 9.#endPosition -> 19}}}.
			
	self testParsingTree: parsingTree with: testDict