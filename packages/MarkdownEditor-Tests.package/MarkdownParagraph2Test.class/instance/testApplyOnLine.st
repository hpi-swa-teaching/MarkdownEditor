tests - lineAdding
testApplyOnLine

	| paragraph methodResult |
	paragraph := MarkdownParagraph newFrom: 'test'.
	methodResult := paragraph applyOnLine: '         **test**  '.
	self assert: nil equals: methodResult. 
	self assert: 'test' equals: paragraph content first.