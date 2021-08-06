tests - lineAdding
testContinueDefault

	| methodResult state |
	state := (MarkdownParsingState new) currentLine: '         **test**  '.
	methodResult := (MarkdownParagraph new) continue: state.
	self assert: 0 equals: methodResult.