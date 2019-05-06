initialize-release
decideFlankingFor: aMarkdownReadStream

	self leftFlanking: (self isLeftFlankingFor: aMarkdownReadStream).
	self rightFlanking: (self isRightFlankingFor: aMarkdownReadStream).