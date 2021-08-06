tests
testSimpleBoxPositionsExtent

	| positions |
	chooser extent: 400 @ 80.
	positions := OrderedCollection new.
	simpleChoosers do: [:box | positions add: box position].
	
	self deny: self boxPositionsForWidth250AndHeight70 equals: positions.
	self assert: self boxPositionsForWidth400AndHeight80 equals: positions