accessing
headingFontSized: pointSize

	^ UnextendableTextFontReference 
		toFont: (TTCFont
			familyName: 'BitstreamVeraSans'
			pointSize: pointSize
			emphasis: TextEmphasis normal emphasisCode)
