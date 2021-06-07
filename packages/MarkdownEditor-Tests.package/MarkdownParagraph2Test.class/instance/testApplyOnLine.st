tests - lineAdding
testApplyOnLine

	| paragraph |
	paragraph := MarkdownParagraph2 new content: 'test'.
	paragraph applyOnLine: '         **test**  '.
	self assert: 'test**test**' equals: paragraph content