as yet unclassified
testHandleWhiteSpaces2

	| output |
	output := blockTextStyler handleWhiteSpacesWith: '# Hello World', Character cr and: '# Hello World'.
	
	self assert: '# Hello World', Character cr equals: output