tests - attributes
testLevel1Attributes

	self 
		assert: {TextFontReference toFont: (TextStyle default copy fontOfSize: 26). 
			TextEmphasis underlined} asSet 
		equals: (MarkdownHeading attributesFor: '# level1') asSet