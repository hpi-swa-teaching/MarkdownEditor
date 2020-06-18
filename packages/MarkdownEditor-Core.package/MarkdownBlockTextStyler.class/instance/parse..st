parsing
parse: aString
	
	| lines |
	lines := self createLines: aString.
	^ self buildBlockStructureFrom: lines
