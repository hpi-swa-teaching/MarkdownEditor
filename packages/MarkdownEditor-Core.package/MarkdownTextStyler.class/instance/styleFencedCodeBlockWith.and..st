styling
styleFencedCodeBlockWith: aMarkdownFencedCodeBlock and: aStyler

	| code |
	code := ((aMarkdownFencedCodeBlock inlineElements at: 1) content) asText.
	aStyler privateStyle: code.
	self copyAttributesFrom: code 
		from: aMarkdownFencedCodeBlock innerStartPosition
		to: aMarkdownFencedCodeBlock endPosition.
	self text 
		addAllAttributes: aMarkdownFencedCodeBlock textAttributes
		from: aMarkdownFencedCodeBlock startPosition
		to: aMarkdownFencedCodeBlock endPosition