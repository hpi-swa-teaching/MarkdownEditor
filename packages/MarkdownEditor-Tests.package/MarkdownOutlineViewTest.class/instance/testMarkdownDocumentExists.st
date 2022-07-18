tests
testMarkdownDocumentExists

	| listItems root |
	listItems := self treeItems.
	root := listItems first.
	
	self assert: 'a MarkdownDocument' equals: root contents