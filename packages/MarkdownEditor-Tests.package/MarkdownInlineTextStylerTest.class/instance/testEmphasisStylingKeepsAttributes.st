tests - parsing
testEmphasisStylingKeepsAttributes

	| text |
	text := Text string: '*Emphases* do **not** remove attributes' attribute: TextEmphasis underlined.
	inlineTextStyler privateStyle: text.
	self
		assertRuns: {10. 4. 7. 18}
		values: {{TextEmphasis underlined. TextEmphasis italic}. {TextEmphasis underlined}. {TextEmphasis underlined. TextEmphasis bold}. {TextEmphasis underlined}}
		areStyleOf: text