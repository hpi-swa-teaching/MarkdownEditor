tests - positioning
testInnerPositions

	| parsingTree testDict |
	parsingTree := self parser parse: '#  hallo
#  dklasfj   #
#          
#      lkasfaöf  \#'.

	testDict := Dictionary newFrom: {#children -> 
			{Dictionary newFrom: {#innerStartPosition -> 4.#innerEndPosition -> 8}.
			Dictionary newFrom: {#innerStartPosition -> 13.#innerEndPosition -> 19}.
			Dictionary newFrom: {#innerStartPosition -> 24.#innerEndPosition -> 23}.
			Dictionary newFrom: {#innerStartPosition -> 44.#innerEndPosition -> 55}}}.
			
	self testParsingTree: parsingTree with: testDict