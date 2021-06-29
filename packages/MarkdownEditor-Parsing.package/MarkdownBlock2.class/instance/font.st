styling
font

	| font |
	font := TTCFont
		familyName: 'BitstreamVeraSans'
		pointSize: self fontSize
		emphasis: TextEmphasis normal emphasisCode.
	^ font