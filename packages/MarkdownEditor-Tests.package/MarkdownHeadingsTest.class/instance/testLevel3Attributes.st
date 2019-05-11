tests - attributes
testLevel3Attributes

	self assert: {TextFontReference toFont: (TextStyle default copy fontOfSize: 22). TextEmphasis underlined} asSet equals: (MarkdownHeading attributesFor: '### level3') asSet