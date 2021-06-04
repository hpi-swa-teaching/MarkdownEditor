tests
testSimpleBoxPositions

	| positions |
	
	chooser width: 250.
	chooser height: 70.
		
	positions := OrderedCollection new.
	simpleChoosers do: [:box | positions add: box position].
	
	self assert: self boxPositionsForWidth250AndHeight70 equals: positions