tests - parsing
testEmphasisParsingKeepsAttributes

	| text |
	text := Text string: '*Emphases* do **not** remove attributes' attribute: TextEmphasis underlined.
	self
		assert: (inlineParser parse: text)
		hasRuns: {10. 4. 7. 18}
		values: {{TextEmphasis underlined. TextEmphasis italic}. {TextEmphasis underlined}. {TextEmphasis underlined. TextEmphasis bold}. {TextEmphasis underlined}}