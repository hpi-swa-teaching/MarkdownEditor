tests - lineAdding
testApplyOnLine

	| thematicBreak |
	thematicBreak := MarkdownATXHeading new.
	self assert: nil equals: (thematicBreak applyOnLine: 'test').
	self assert: nil equals: thematicBreak content