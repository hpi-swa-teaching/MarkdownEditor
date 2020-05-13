parse
parseUnary
	| unary type |
	
    [self currentTokenType == #name]
        whileTrue: [
			unary := currentToken.
			type := #unary.
			self scanPast: type]