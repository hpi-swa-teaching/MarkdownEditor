tests - lineAdding
testContinueEmpty

	| methodResult state |
	state := (MarkdownParsingState new) currentLine: '        	  '.
	methodResult := (MarkdownParagraph new) continue: state.
	self assert: #failedMatch equals: methodResult.