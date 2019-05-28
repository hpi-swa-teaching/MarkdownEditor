accessing
assert: aCollectionOfStrings parsesToBlocks: aCollectionOfMarkdownBlockClasses

	| lines |
	lines := aCollectionOfStrings reduce: [:a :b | a, Character cr, b].
	blockParser parse: lines.
	self assert: aCollectionOfMarkdownBlockClasses size equals: blockParser blocks size.
	aCollectionOfMarkdownBlockClasses with: blockParser blocks do: [:expectedClass :block |
		self assert: (block isKindOf: expectedClass)]