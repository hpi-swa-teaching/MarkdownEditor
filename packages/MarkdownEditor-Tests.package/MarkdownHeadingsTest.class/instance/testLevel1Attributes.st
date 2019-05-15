tests - attributes
testLevel1Attributes

	self 
		assert: '# level1'
		hasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 26). 
			TextEmphasis underlined}
