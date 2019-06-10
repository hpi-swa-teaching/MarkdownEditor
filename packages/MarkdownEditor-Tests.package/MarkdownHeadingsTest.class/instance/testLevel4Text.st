tests - text
testLevel4Text

	self 
		assert: '#### level4'
		asTextHasAttributes: {TextFontReference toFont: (self headingFontSized: 19)}
