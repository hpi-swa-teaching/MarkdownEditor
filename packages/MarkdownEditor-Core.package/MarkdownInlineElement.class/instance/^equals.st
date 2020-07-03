as yet unclassified
= aMarkdownLink

	^ self endPosition = aMarkdownLink endPosition
		and: [self startPosition = aMarkdownLink startPosition]
		and: [self textAttribute = aMarkdownLink textAttribute]
		and: [self colorAttribute = aMarkdownLink colorAttribute]