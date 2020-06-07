as yet unclassified
testChangeHeadingSize

	| options textMorphs styleSettings |
	
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:newStyleSettings | styleSettings := newStyleSettings].
		
	options handleSliderChangeFor: 2 with: 40.
	options handleSliderChangeFor: 5 with: 23.

	self assert: ((styleSettings headingFontSizes at: 2) = 40).
	self assert: ((styleSettings headingFontSizes at: 5) = 23).
	
	textMorphs := options submorphs first scroller submorphs select: [:morph | morph isKindOf: TextMorph].
	self assert: (textMorphs at: 3) contents = '23'.
	self assert: (textMorphs at: 9) contents = '40'.