styling
textColor

	self isOrdered
		ifTrue: [^ TextColor color: (MarkdownSettings currentTextColorAt:  'Ord. List 1')]
		ifFalse: [^ TextColor color: (MarkdownSettings currentTextColorAt:  'Unord. List 1')]