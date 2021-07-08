helper
textAttributesFor: aColor and: aFontSize and: aTextEmphasis

	| font |
	font := TTCFont
		familyName: 'BitstreamVeraSans'
		pointSize: aFontSize
		emphasis: TextEmphasis normal emphasisCode.
	
	 ^ {(UnextendableTextFontReference toFont: font). TextColor color: aColor. aTextEmphasis}