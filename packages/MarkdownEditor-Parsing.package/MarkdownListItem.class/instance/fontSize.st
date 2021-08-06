styling
fontSize

	| level |
	level := self level.
	level > 2
		ifTrue: [level := '3+'].
	self isOrdered
		ifTrue: [^ MarkdownSettings currentFontSizeAt:  'Ord. List ', level]
		ifFalse: [^ MarkdownSettings currentFontSizeAt:  'Unord. List ', level]