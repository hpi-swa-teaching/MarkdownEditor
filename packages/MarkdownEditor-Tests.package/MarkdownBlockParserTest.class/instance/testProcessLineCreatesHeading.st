tests
testProcessLineCreatesHeading

	blockParser processLine: '# Minimetro
'.
	self assert: (blockParser blocks last isKindOf: MarkdownHeading).
	self assert: 1 equals: blockParser blocks size