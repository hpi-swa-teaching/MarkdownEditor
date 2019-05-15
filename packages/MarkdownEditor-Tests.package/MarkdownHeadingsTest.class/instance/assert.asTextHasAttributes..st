accessing
assert: markdownString asTextHasAttributes: aCollectionOfTextAttributes

	| parsedText |
	parsedText := (MarkdownHeading newFrom: markdownString) asText.
	self
		assert: aCollectionOfTextAttributes asSet
		equals: parsedText runs values first asSet
