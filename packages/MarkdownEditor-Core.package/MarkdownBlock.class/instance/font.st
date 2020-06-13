as yet unclassified
font

	| font |
	font := TTCFont
		familyName: 'BitstreamVeraSans'
		pointSize: self fontSize
		emphasis: TextEmphasis normal emphasisCode.
	"font foregroundColor: Color black."
	"Transcript show: font foregroundColor; cr."
		
	^ font