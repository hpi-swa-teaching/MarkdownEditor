parsing
tokenize

	| markdownStream |
	markdownStream := MarkdownReadStream on: self textToParse asString.
	[markdownStream atEnd] whileFalse: [| token |
		token := self nextTokenIn: markdownStream.
		self tokens addLast: token.
		markdownStream next: token length]