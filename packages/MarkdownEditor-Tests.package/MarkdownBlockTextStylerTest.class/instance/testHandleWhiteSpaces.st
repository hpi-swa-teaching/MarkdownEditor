as yet unclassified
testHandleWhiteSpaces

	| output |
	output := blockTextStyler handleWhiteSpacesWith: 'Hello World ' and: 'Hello World'.
	
	self assert: 'Hello World ' equals: output