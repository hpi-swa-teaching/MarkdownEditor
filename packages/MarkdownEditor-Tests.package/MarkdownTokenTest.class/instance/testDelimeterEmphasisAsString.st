tests - conversion
testDelimeterEmphasisAsString

	| delimiter stream stringToken |
	stream := MarkdownReadStream on: '**'.
	delimiter := MarkdownDelimiterEmphasis newFor: stream.
	stringToken := delimiter asStringToken.
	
	self assert: (stringToken isKindOf: MarkdownString).
	self assert: delimiter content equals: stringToken content.
	self assert: delimiter startPosition equals: stringToken startPosition