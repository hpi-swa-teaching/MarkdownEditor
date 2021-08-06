tests - container
testStyleListsNested

	| text fontColor1 fontSize1 fontColor2 fontSize2 fontColor3 fontSize3 fontSizeParagraph fontColorParagraph |
	text := '- lvl1
    - lvl2
        - lvl3' asText.
	textStyler privateStyle: text.
	fontSize1 := self styleSettingsForStylingTests fontSizes at: 'Unord. List 1'.
	fontColor1 := self styleSettingsForStylingTests fontColors at: 'Unord. List 1'.
	fontSize2 := self styleSettingsForStylingTests fontSizes at: 'Unord. List 2'.
	fontColor2 := self styleSettingsForStylingTests fontColors at: 'Unord. List 2'.
	fontSize3 := self styleSettingsForStylingTests fontSizes at: 'Unord. List 3+'.
	fontColor3 := self styleSettingsForStylingTests fontColors at: 'Unord. List 3+'.
	fontSizeParagraph := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColorParagraph := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	self
		assertRunsValues: {self textAttributesFor: fontColor1 and: fontSize1. 
			self textAttributesFor: fontColorParagraph and: fontSizeParagraph. 
			self textAttributesFor: fontColor2 and: fontSize2.
			self textAttributesFor: fontColorParagraph and: fontSizeParagraph. 
			self textAttributesFor: fontColor3 and: fontSize3.
			self textAttributesFor: fontColorParagraph and: fontSizeParagraph. }
		areStyleOf: text