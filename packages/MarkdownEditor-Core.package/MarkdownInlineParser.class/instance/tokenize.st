parsing
tokenize

	| markdownStream |
	self tokens: OrderedCollection new.
	markdownStream := MarkdownReadStream on: self text asString.
	[markdownStream atEnd] whileFalse: [| token |
		token := self nextTokenIn: markdownStream.
		self tokens addLast: token.
		markdownStream next: token length]