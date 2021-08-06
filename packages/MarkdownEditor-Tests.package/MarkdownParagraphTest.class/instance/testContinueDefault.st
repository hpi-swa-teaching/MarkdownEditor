tests - lineAdding
testContinueDefault

	| methodResult state |
	state := (MarkdownParsingState new) currentLine: '         **test**  '.
	methodResult := (MarkdownParagraph new) continue: state.
	
	self assert: #matched equals: methodResult