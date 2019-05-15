accessing
assert: markdownString hasAttributes: aCollectionOfTextAttributes

	self
		assert: aCollectionOfTextAttributes asSet
		equals: (MarkdownHeading newFrom: markdownString) attributes asSet
