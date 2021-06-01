as yet unclassified
testSimpleBoxPositions

	| positions |
	
	chooser width: 250.
	chooser height: 70.
		
	positions := OrderedCollection new.
	simpleChoosers do: [:box | positions add: box position].
	
	Transcript show: self boxPositionsForWidth250AndHeight70 class.
	
	self assert: positions = self boxPositionsForWidth250AndHeight70