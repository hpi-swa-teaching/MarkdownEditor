as yet unclassified
asMarkdownString

	| content |
	content := ''.
	self count
		timesRepeat: [content := content , self type asString].
	^ MarkdownString2 newFrom: content