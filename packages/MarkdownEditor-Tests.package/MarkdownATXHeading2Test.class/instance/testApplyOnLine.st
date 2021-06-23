tests - lineAdding
testApplyOnLine

	| heading |
	heading := MarkdownATXHeading2 new.
	self assert: nil equals: (heading applyOnLine: 'test').
	self assert: true equals: heading content isEmpty.