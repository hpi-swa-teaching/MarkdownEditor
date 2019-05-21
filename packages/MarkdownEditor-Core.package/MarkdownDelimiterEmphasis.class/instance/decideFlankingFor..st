initialize-release
decideFlankingFor: aMarkdownReadStream

	self leftFlanking: (self decideLeftFlankingFor: aMarkdownReadStream).
	self rightFlanking: (self decideRightFlankingFor: aMarkdownReadStream).