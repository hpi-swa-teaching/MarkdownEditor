tests - attributes
testLevel4Attributes

	self assert: {TextFontReference toFont: (TextStyle default copy fontOfSize: 22)} asSet equals: (MarkdownHeading attributesFor: '#### level4') asSet