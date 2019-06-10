tests - text
testLevel6Text

	self 
		assert: '###### level6'
		asTextHasAttributes: {TextFontReference toFont: (self headingFontSized: 14)}
