testLoop
testList: anOrderedCollection onBlock: aMarkdownBlock2
	
	anOrderedCollection do: [:testTupel | 
		self assert: testTupel second equals: (aMarkdownBlock2 applyOnLine: testTupel first).
		self assert: testTupel third equals: (aMarkdownBlock2 content inject: '' into: [:t :line| t,line]).
		self assert: testTupel fourth equals: aMarkdownBlock2 isOpen]
				