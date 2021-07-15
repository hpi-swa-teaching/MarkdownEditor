styling
styleFencedCodeBlockWith: aMarkdownFencedCodeBlock and: aStyler

	| code |
	code := aMarkdownFencedCodeBlock content asText.
	aStyler privateStyle: code.
	self copyAttributesFrom: code 
		from: aMarkdownFencedCodeBlock startPosition + (aMarkdownFencedCodeBlock openingFence size)
		to: aMarkdownFencedCodeBlock endPosition.
	self text 
		addAllAttributes: aMarkdownFencedCodeBlock textAttributes
		from: aMarkdownFencedCodeBlock startPosition
		to: aMarkdownFencedCodeBlock endPosition