as yet unclassified
fontSize

	self isOrdered
		ifTrue: [^ MarkdownSettings currentFontSizeAt: 'Ord. List 1']
		ifFalse: [^ MarkdownSettings currentFontSizeAt: 'Unord. List 1']