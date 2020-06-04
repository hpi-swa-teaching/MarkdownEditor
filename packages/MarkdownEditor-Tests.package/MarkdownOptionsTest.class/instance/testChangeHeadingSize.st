as yet unclassified
testChangeHeadingSize

	| options textMorphs |
	
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [].
	options handleSliderChangeFor: 2 with: 40.
	options handleSliderChangeFor: 5 with: 23.
	textMorphs := options submorphs select: [:morph | morph isKindOf: TextMorph].
	self assert: (textMorphs at: 3) contents = '23'.
	self assert: (textMorphs at: 9) contents = '40'.