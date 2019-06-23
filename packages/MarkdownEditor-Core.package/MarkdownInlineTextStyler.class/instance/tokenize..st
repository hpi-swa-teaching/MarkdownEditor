parsing
tokenize: aString

	| markdownStream |
	markdownStream := MarkdownReadStream on: aString.
	[markdownStream atEnd] whileFalse: [| token |
		token := self nextTokenIn: markdownStream.
		self tokens addLast: token.
		markdownStream next: token length]