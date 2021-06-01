as yet unclassified
testSimpleBoxPositionsExtent

	| positions |
	
	chooser extent: 400 @ 80.
	
	positions := OrderedCollection new.
	simpleChoosers do: [:box | positions add: box position].
	
	self deny: positions = self boxPositionsForWidth250AndHeight70.
	self assert: positions = self boxPositionsForWidth400AndHeight80