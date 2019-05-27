tests - attributes
testAttributizeText

	inlineParser
		text: '**MiniMetro**' asText;
		attributes: {MarkdownAttributeBold from: 1 to: 13};
		attributizeText.
		
	self assert: inlineParser text hasRuns: {13} values: {{TextEmphasis bold}}
	