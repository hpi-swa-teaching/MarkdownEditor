tests - conversion
testStringAsString

	| string stream stringToken |
	stream := MarkdownReadStream on: 'A'.
	string := MarkdownString newFor: stream.
	stringToken := string asStringToken.
	
	self assert: (stringToken isKindOf: MarkdownString).
	self assert: string content equals: stringToken content.
	self assert: string startPosition equals: stringToken startPosition