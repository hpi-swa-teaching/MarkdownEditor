tests - positioning
testInnerPositions

	| parsingTree testDict |
	parsingTree := self parser parse: '#  hallo
#  dklasfj   #
#          
#      lkasfaöf  \#'.

	testDict := Dictionary newFrom: {#children -> 
			{Dictionary newFrom: {#innerStartPosition -> 4}.
			Dictionary newFrom: {#innerStartPosition -> 13}.
			Dictionary newFrom: {#innerStartPosition -> 24}.
			Dictionary newFrom: {#innerStartPosition -> 44}}}.
			
	self testParsingTree: parsingTree with: testDict