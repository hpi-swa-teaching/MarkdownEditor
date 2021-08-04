helper
textAttributesFor: aColor and: aFontSize

	| font |
	font := TTCFont
		familyName: 'BitstreamVeraSans'
		pointSize: aFontSize
		emphasis: TextEmphasis normal emphasisCode.
	
	 ^ {(UnextendableTextFontReference toFont: font). TextColor color: aColor}