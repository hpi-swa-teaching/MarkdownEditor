initialize-release
decideFlankingFor: aMarkdownReadStream

	self 
		isLeftFlanking: (self decideLeftFlankingFor: aMarkdownReadStream);
		isRightFlanking: (self decideRightFlankingFor: aMarkdownReadStream)