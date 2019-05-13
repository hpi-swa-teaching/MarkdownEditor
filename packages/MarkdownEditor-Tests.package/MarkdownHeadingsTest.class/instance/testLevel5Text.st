tests - text
testLevel5Text

	self 
		assert: '##### level5'
		asTextHasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 19). TextEmphasis underlined}
