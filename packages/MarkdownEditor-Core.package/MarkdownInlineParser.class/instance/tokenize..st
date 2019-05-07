parsing
tokenize: aString

	| mdStream |
	self tokens: OrderedCollection new.
	mdStream := MarkdownReadStream on: aString.
	[mdStream atEnd] whileFalse: [| token |
		token := self nextTokenIn: mdStream.
		self tokens addLast: token.
		mdStream next: token length]