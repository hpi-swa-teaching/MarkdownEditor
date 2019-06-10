tests - text
testLevel1Text

	self 
		assert: '# level1'
		asTextHasAttributes: {TextFontReference toFont: (self headingFontSized: 34)}
