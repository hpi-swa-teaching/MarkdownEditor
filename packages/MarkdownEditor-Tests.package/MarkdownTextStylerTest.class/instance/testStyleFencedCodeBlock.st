tests - container
testStyleFencedCodeBlock

	| text fontSize styler testText expectedRuns |
	text := ('```', Character cr, 'some code', Character cr, '```') asText.
	textStyler privateStyle: text.

	testText := 'some code' asText.
	styler := (SHTextStylerST80 new
        classOrMetaClass: self class;
        parseAMethod: true;
        yourself).
	styler privateStyle: testText.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Code'.
	expectedRuns := Text new: testText runs size + 8.
	expectedRuns 
		addAllAttributes: {TextColor color: MarkdownStyleSettings themeFontColor} 
		from: testText size + 5 to: expectedRuns size.
	testText runs doWithIndex: [:value :index | expectedRuns addAllAttributes: value from: index + 4 to: index + 4].
	expectedRuns addAllAttributes: (self textAttributesFor: fontSize).
    	
	self assert: expectedRuns runs values equals: text runs values