as yet unclassified
testMarkdownDocumentIsRoot

	| root |
	root := self tree.
	
	self assert: 1 equals: root roots size.
	self assert: 'a MarkdownDocument' equals: root roots first contents