tests
testProcessLineExtendsParagraph

	| paragraph expectedContent |
	paragraph := MarkdownParagraph newFrom: 'Play', Character cr.
	blockParser blocks: {paragraph} asOrderedCollection.
	blockParser processLine: 'Minimetro', Character cr.
	expectedContent := 'Play', Character cr, 'Minimetro', Character cr.
	self
		assert: 1 equals: blockParser blocks size;
		assert: expectedContent equals: blockParser blocks last content