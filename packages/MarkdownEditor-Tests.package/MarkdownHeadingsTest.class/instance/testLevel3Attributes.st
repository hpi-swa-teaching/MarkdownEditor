tests - attributes
testLevel3Attributes

	self
		assert: '### level3'
		hasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 22). TextEmphasis underlined}
