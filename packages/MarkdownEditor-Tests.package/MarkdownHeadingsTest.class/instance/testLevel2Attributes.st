tests - attributes
testLevel2Attributes

	self assert: {TextFontReference toFont: (TextStyle default copy fontOfSize: 26)}asSet equals: (MarkdownHeading attributesFor: '## level2') asSet