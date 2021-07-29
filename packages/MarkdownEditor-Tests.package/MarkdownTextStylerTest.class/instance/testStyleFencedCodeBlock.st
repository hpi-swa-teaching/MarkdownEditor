tests - container
testStyleFencedCodeBlock

	| text fontSize styler testText styleCollection |
	text := ('```', Character cr, 'some code', Character cr,'```') asText.
	textStyler privateStyle: text.
	
	testText :=  'some code' asText.
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	styler privateStyle: testText.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Code'.
	styleCollection := OrderedCollection new.
	testText runs do: [:run | |array|
							array := Array new: 2.
							array at: 1 put: run first.
							array at: 2 put: ((self textAttributesFor: fontSize) first).
							styleCollection add: array].
						
	self
		assertRunsValues: 
			"{(self textAttributesFor: fontSize).
			(self textAttributesFor: fontSize) union: {testText runs}.
			(self textAttributesFor: fontSize)}"
			{self textAttributesFor: fontSize. 
			styleCollection asArray first.
			styleCollection asArray last.
			styleCollection asArray first
			"(self textAttributesFor: fontSize)"}
		areStyleOf: text