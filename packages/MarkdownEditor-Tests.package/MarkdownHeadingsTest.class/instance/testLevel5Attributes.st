tests - attributes
testLevel5Attributes

	self assert: {TextFontReference toFont: (TextStyle default copy fontOfSize: 19). TextEmphasis underlined} asSet equals: (MarkdownHeading attributesFor: '##### level5') asSet