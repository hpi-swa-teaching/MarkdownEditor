parse
parseUnary
"	| unary type |
	
    [self isName]
        whileTrue: [
			unary := currentToken.
			type := #unary.
			self scanPast: type]"
	[ self currentTokenType == #name ] whileTrue: [
		self scanPast: #unary]