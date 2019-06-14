tests - attributes
testAttributizeText

	inlineParser
		textToParse: '**MiniMetro**' asText;
		attributes: {MarkdownAttributeBold from: 1 to: 13};
		attributizeText.
		
	self assert: inlineParser textToParse hasRuns: {13} values: {{TextEmphasis bold}}
	