parsing
buildBlockStructureFrom: aCollectionOfStrings
	
	| blocks |
	blocks := OrderedCollection new.
	aCollectionOfStrings do: [:line |
		self process: line into: blocks].
	^ blocks
