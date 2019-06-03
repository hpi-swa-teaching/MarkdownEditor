tests
testProcessLineCreatesParagraph

	blockParser processLine: 'Minimetro', Character cr.
	self
		assert: 1 equals: blockParser blocks size;
		assert: (blockParser blocks last isKindOf: MarkdownParagraph)