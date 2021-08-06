tests - treeRepresentation
testTreeRepresentationReference

	| link expected list |
	link := MarkdownLink newFrom: 'hpi.de'.
	list := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'link'}.
	link children add: list.
	expected := OrderedCollection newFrom: {'path:', String tab, 'hpi.de'. list}.
	
	self assert: expected equals: link treeRepresentation