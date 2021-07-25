tests - container
testStyleFencedCodeBlock

	| text fontSize styler testText |
	text := ('```', Character cr, 'some code', Character cr,'```') asText.
	textStyler privateStyle: text.
	
	testText :=  'some code' asText.
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	styler privateStyle: testText.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Code'.
	self
		assertRunsValues: 
			{(self textAttributesFor: fontSize).
			(self textAttributesFor: fontSize) union: {testText runs}.
			(self textAttributesFor: fontSize)}
		areStyleOf: text