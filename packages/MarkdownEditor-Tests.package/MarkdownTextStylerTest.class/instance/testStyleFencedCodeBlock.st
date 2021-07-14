tests - container
testStyleFencedCodeBlock

	| text fontSize styler |
	text := ('```', Character cr, 'some code', Character cr,'```') asText.
	textStyler privateStyle: text.
	
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	styler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Code'.
	self
		assertRunsValues: {(self textAttributesFor: fontSize) union: {text runs}}
		areStyleOf: text