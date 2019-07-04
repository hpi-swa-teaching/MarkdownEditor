parsing
buildBlockStructureFrom: aCollectionOfMarkdownLines
	
	| blocks |
	blocks := OrderedCollection new.
	aCollectionOfMarkdownLines do: [:line |
		self process: line into: blocks].
	^ blocks
