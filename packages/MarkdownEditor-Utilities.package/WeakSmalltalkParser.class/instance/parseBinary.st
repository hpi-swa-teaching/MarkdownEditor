parse
parseBinary 
	"| binary type |
	self parseUnary.
	[self isBinary] 
		whileTrue: [
			binary := currentToken.
			type := #binary.
			self scanPast: type. 	
			self parseTerm.
            	self parseUnary]"
	self parseUnary.
	[ self currentTokenType == #binary ] 
		whileTrue: [
			self scanPast: #binary.
			self
				parseTerm;
				parseUnary ]
			