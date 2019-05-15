tests - text
testLevel1Text

	self 
		assert: '# level1'
		asTextHasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}
