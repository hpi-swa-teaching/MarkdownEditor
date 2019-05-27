attributes
attributeStartingAt: openingMarkdownEmphasisDelimiter

	| attributeDelimiterLength start end attributeClass |
	attributeDelimiterLength := (self delimiterLengthForAttributeWith: openingMarkdownEmphasisDelimiter).
	start := openingMarkdownEmphasisDelimiter endPosition - attributeDelimiterLength + 1.
	end := self startPosition + attributeDelimiterLength - 1.
	attributeClass := self attributeTypeFor: attributeDelimiterLength.
	^ attributeClass from: start to: end
