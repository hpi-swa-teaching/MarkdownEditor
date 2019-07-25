*MarkdownEditor-Tests
hash

	^ (self startPosition hash bitXor: self endPosition hash)
		bitXor: self textAttribute hash
