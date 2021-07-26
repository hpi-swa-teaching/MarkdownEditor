tests
testClickable

	| items |
	items := self treeItems.
	items do: [:item | 
		(item complexContents item isKindOf: MarkdownBlock)
			ifTrue: [self assert: true equals: (outlineModel isClickableObject: item complexContents item)]
			ifFalse: [self assert: false equals: (outlineModel isClickableObject: item complexContents item)]]