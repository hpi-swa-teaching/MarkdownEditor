accessing
assert: aCollectionOfMarkdownBlockClasses isParsedStructureOf: markdownString

	| blocks |
	blocks := blockTextStyler parse: markdownString.
	self assert: aCollectionOfMarkdownBlockClasses size equals: blocks size.
	aCollectionOfMarkdownBlockClasses with: blocks do: [:expectedClass :block |
		self assert: (block isKindOf: expectedClass)]