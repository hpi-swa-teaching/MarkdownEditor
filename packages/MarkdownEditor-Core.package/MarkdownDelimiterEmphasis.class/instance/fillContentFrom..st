initialize-release
fillContentFrom: aMarkdownReadStream

	| len |
	len := self calculateLengthFor: aMarkdownReadStream.
	self content: (aMarkdownReadStream peek: len);
		decideFlankingFor: aMarkdownReadStream