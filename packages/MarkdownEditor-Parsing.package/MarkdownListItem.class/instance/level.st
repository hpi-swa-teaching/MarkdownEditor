styling
level

	(self container container isKindOf: MarkdownListItem)
		ifFalse: [^ 1]
		ifTrue: [^ self container container level + 1]