tests - lineAdding
testApplyOnLine

	| thematicBreak |
	thematicBreak := MarkdownATXHeading2 new.
	self assert: nil equals: (thematicBreak applyOnLine: 'test').
	self assert: true equals: thematicBreak content isEmpty.