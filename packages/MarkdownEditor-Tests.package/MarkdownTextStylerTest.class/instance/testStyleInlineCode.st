tests - emphasis
testStyleInlineCode

	| text fontColor fontSize styler |
	textStyler privateStyle: '`code`' asText.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	text := '`code`' asText.
	styler := (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself).
	styler privateStyle: text.
	
	self
		assertRunsValues: 
			{(self textAttributesFor: fontColor and: fontSize) union: text runs}
		areStyleOf: text