parse
parseKeyword 
    | keyword rangeIndices |
    self parseBinary.
	keyword := ''.
	rangeIndices := #().
	[self currentTokenType == #keyword]
		whileTrue: [
			keyword := keyword, currentToken. 
			self addRangeType: #keyword.
			"remember where this keyword token is in ranges"
			rangeIndices := rangeIndices copyWith: ranges size.
			self scanNext.
			self parseTerm.
			self parseBinary]