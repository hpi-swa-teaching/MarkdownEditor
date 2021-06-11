tests - lineAdding
testApplyOnLine

	| paragraph methodResult |
	paragraph := MarkdownParagraph2 new content: 'test'.
	methodResult := paragraph applyOnLine: '         **test**  '.
	self assert: '' equals: methodResult. 
	self assert: 'test**test**' equals: paragraph content.
	
	paragraph := MarkdownParagraph2 new content: 'test'.
	methodResult := paragraph applyOnLine: '   '.
	self assert: nil equals: methodResult. 
	self assert: 'test' equals: paragraph content.