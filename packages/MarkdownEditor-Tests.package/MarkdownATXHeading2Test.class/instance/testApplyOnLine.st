tests - lineAdding
testApplyOnLine

	| heading |
	heading := MarkdownATXHeading2 new.
	self assert: false equals: (heading applyOnLine: 'test').
	self assert: nil equals: heading content.