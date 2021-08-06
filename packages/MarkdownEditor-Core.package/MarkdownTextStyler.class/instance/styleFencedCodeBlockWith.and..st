styling
styleFencedCodeBlockWith: aMarkdownFencedCodeBlock and: aStyler

	| code |
	code := ((aMarkdownFencedCodeBlock inlineElements first) content) asText.
	aStyler privateStyle: code.
	self 
		copyAttributesFrom: code 
		from: aMarkdownFencedCodeBlock innerStartPosition
		to: aMarkdownFencedCodeBlock endPosition
		with: true.
	self text 
		addAllAttributes: aMarkdownFencedCodeBlock textAttributes
		from: aMarkdownFencedCodeBlock startPosition
		to: aMarkdownFencedCodeBlock endPosition