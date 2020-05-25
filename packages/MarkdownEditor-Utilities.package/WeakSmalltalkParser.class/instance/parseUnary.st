parse
parseUnary
  [ self currentTokenType == #name ] whileTrue: [
		self scanPast: #unary]
