initialize-release
decideFlankingFor: aMarkdownReadStream

	self 
		leftFlanking: (self decideLeftFlankingFor: aMarkdownReadStream);
		rightFlanking: (self decideRightFlankingFor: aMarkdownReadStream)