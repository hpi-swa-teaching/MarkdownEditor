parse
parseKeyword 

  	| keyword rangeIndices |
	self parseBinary.
	self currentTokenType == #keyword ifFalse: [ ^self ].
	
	keyword := currentToken.
	self addRangeType: #keyword.
	rangeIndices := { ranges size }.
	self 
		scanNext;
		parseTerm;
		parseBinary.
    		[self currentTokenType == #keyword]
        		whileTrue: [
				keyword := keyword, currentToken. 
				self addRangeType: #keyword.
				"remember where this keyword token is in ranges"
				rangeIndices := rangeIndices copyWith: ranges size.
				self 
					scanNext;
					parseTerm;
					parseBinary ]