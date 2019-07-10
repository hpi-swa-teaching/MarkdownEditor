attributes
attributeStartingAt: openingMarkdownEmphasisDelimiter

	| attributeDelimiterLength start end attribute |
	attributeDelimiterLength := (self delimiterLengthForAttributeWith: openingMarkdownEmphasisDelimiter).
	start := openingMarkdownEmphasisDelimiter endPosition - attributeDelimiterLength + 1.
	end := self startPosition + attributeDelimiterLength - 1.
	attribute := self attributeFor: attributeDelimiterLength.
	attribute setFrom: start to: end.
	^ attribute
