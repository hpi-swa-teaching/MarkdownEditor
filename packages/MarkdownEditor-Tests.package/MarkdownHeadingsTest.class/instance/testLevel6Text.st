tests - text
testLevel6Text

	self 
		assert: '###### level6'
		asTextHasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 19)}
