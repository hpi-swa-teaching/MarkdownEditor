initialize-release
fillContentFrom: aMarkdownReadStream

	| length |
	length := self calculateLengthFor: aMarkdownReadStream.
	self content: (aMarkdownReadStream peek: length);
		decideFlankingFor: aMarkdownReadStream