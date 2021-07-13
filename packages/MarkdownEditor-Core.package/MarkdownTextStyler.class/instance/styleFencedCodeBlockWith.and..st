styling
styleFencedCodeBlockWith: aMarkdownFencedCodeBlock and: aStyler

	| code |
	code := aMarkdownFencedCodeBlock content asText.
	aStyler privateStyle: code.
	self addAttributesFrom: code 
		from: aMarkdownFencedCodeBlock startPosition + (aMarkdownFencedCodeBlock openingFence size)
		to: aMarkdownFencedCodeBlock endPosition.
	self text addAllAttributes: aMarkdownFencedCodeBlock textAttributes