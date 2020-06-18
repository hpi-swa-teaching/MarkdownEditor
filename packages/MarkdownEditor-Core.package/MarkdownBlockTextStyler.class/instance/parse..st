parsing
parse: aString
	
	| lines |
	lines := self createLines: aString.
	lines notEmpty ifTrue: [
		(lines last content matchesRegex: '(.)*\r') ifTrue: [lines add: (MarkdownLine newFrom: '')].].
	^ self buildBlockStructureFrom: lines
