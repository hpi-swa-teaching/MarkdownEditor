styling
textColor

	| level |
	level := self level.
	level > 2
		ifTrue: [level := '3+'].
	self isOrdered
		ifTrue: [^ TextColor color: (MarkdownSettings currentTextColorAt:  'Ord. List ', level)]
		ifFalse: [^ TextColor color: (MarkdownSettings currentTextColorAt:  'Unord. List ', level)]