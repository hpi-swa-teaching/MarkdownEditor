applying
addItem: aMarkdownListItem

	aMarkdownListItem isOrdered 
		ifTrue: [aMarkdownListItem number: 
			self startNumber + self children size - 1].
	self children add: aMarkdownListItem