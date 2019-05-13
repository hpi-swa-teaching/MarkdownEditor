tests - text
testLevel2Text

	self 
		assert: '## level2'
		asTextHasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 26)}
