parse
parseBinary 

	self parseUnary.
  [ self currentTokenType == #binary ] 
		whileTrue: [
			self scanPast: #binary.
			self
				parseTerm;
				parseUnary ]
			