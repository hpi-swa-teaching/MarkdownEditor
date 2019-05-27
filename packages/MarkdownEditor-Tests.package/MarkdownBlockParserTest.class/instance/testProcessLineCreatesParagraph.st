tests
testProcessLineCreatesParagraph

	blockParser processLine: 'Minimetro
'.
	self assert: (blockParser blocks last isKindOf: MarkdownParagraph).
	self assert: 1 equals: blockParser blocks size