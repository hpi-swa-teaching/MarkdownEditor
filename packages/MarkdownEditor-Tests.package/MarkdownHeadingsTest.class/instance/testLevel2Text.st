tests - text
testLevel2Text

	self 
		assert: '## level2'
		asTextHasAttributes: {TextFontReference toFont: (self headingFontSized: 28)}
