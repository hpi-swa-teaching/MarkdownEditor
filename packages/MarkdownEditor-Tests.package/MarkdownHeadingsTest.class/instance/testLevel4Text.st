tests - text
testLevel4Text

	self 
		assert: '#### level4'
		asTextHasAttributes: {TextFontReference toFont: (TextStyle default copy fontOfSize: 22)}
