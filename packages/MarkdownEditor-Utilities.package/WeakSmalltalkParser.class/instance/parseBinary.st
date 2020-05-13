parse
parseBinary 
	| binary type |
	self parseUnary.
	[self currentTokenType == #binary] 
		whileTrue: [
			binary := currentToken.
			type := #binary.
			self scanPast: type. 	
			self parseTerm.
            	self parseUnary]