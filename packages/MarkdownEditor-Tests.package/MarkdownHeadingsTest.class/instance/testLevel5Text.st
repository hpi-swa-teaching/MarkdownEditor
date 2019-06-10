tests - text
testLevel5Text

	self 
		assert: '##### level5'
		asTextHasAttributes: {TextFontReference toFont: (self headingFontSized: 16)}
