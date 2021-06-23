testLoop
testList: anOrderedCollection onBlock: aMarkdownBlock2
	
	anOrderedCollection do: [:testTupel | 
		self assert: testTupel second equals: (aMarkdownBlock2 remainsOpenIn: testTupel first)]