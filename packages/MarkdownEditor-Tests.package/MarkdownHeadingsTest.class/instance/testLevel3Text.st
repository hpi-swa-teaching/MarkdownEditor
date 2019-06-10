tests - text
testLevel3Text

	self 
		assert: '### level3'
		asTextHasAttributes: {TextFontReference toFont: (self headingFontSized: 22)}
