accessing
assert: aCollectionOfMarkdownBlockClasses isParsedStructureOf: markdownString

	blockParser parse: markdownString.
	self assert: aCollectionOfMarkdownBlockClasses size equals: blockParser blocks size.
	aCollectionOfMarkdownBlockClasses with: blockParser blocks do: [:expectedClass :block |
		self assert: (block isKindOf: expectedClass)]