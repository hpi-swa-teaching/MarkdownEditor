tests - attributes
testLevel6Attributes

	self assert: {TextFontReference toFont: (TextStyle default copy fontOfSize: 19)} asSet equals: (MarkdownHeading attributesFor: '###### level6') asSet