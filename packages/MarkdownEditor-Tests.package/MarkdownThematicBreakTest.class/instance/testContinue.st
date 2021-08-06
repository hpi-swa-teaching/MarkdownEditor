tests - lineAdding
testContinue

	| thematicBreak state |
	state := (MarkdownParsingState new) currentLine: 'test'.
	thematicBreak := MarkdownThematicBreak new.
	self assert: #failedMatch equals: (thematicBreak continue: state).