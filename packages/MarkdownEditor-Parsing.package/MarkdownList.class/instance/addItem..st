applying
addItem: aMarkdownListItem2

	aMarkdownListItem2 isOrdered 
		ifTrue: [aMarkdownListItem2 number: 
			self startNumber + self children size - 1].
	self children add: aMarkdownListItem2