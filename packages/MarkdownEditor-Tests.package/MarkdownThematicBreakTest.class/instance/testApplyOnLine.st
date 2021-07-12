tests - lineAdding
testApplyOnLine

	| thematicBreak state |
	state := (MarkdownParsingState new) currentLine: 'test'.
	thematicBreak := MarkdownThematicBreak new.
	self assert: 1 equals: (thematicBreak continue: state).