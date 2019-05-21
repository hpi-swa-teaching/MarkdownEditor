attributes
attributeStartingAt: openingMarkdownDelimiterEmphasis

	| attributeDelimiterLength start end attributeClass |

	attributeDelimiterLength := (self attributeDelimiterLengthWith: openingMarkdownDelimiterEmphasis).
	start := openingMarkdownDelimiterEmphasis endPosition - attributeDelimiterLength + 1.
	end := self startPosition + attributeDelimiterLength - 1.
	attributeClass := self attributeTypeStartingAt: openingMarkdownDelimiterEmphasis.
	^ attributeClass from: start to: end
