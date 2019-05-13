tests - attributes
testLevel2Attributes

	self
		assert: '## level2'
		hasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 26)}
