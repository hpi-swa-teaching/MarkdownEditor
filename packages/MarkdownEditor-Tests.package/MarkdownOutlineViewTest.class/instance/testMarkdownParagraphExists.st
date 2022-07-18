tests
testMarkdownParagraphExists

	| listItems paragraphs |
	listItems := self treeItems.
	paragraphs := listItems select: [:item | item contents = 'a MarkdownParagraph'].
	
	self assert: 1 equals: paragraphs size