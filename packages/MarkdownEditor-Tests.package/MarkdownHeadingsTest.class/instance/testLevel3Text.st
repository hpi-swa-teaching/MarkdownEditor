tests - text
testLevel3Text

	self 
		assert: '### level3'
		asTextHasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 22). TextEmphasis underlined}
