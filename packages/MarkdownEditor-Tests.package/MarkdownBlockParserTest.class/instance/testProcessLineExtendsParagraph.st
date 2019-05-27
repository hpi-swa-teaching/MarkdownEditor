tests
testProcessLineExtendsParagraph
	
	blockParser blocks: {MarkdownParagraph newFrom: 'Play
'} asOrderedCollection.
	blockParser processLine: 'Minimetro
'.
	self assert: 'Play
Minimetro
' equals: blockParser blocks last content.
	self assert: 1 equals: blockParser blocks size