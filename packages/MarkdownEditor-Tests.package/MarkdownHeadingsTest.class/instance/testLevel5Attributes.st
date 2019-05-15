tests - attributes
testLevel5Attributes

	self
		assert: '##### level5'
		hasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 19). TextEmphasis underlined}