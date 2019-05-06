initialize-release
initialize: aMarkdownReadStream

	| len |
	super initialize.
	len := self calculateLengthFor: aMarkdownReadStream.
	self content: (aMarkdownReadStream peek: len);
		decideFlankingFor: aMarkdownReadStream
	 	
	
	
	