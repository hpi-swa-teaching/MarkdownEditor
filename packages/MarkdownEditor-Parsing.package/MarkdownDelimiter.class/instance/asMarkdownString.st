helpers
asMarkdownString

	| content |
	content := ''.
	self count
		timesRepeat: [content := content , self type asString].
	^ MarkdownString newFrom: content startingAt: self startPosition