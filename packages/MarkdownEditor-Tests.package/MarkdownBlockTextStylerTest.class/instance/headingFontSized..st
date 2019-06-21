accessing
headingFontSized: pointSize

	^ TextFontReference 
		toFont: (TTCFont
			familyName: 'BitstreamVeraSans'
			pointSize: pointSize
			emphasis: TextEmphasis normal emphasisCode)