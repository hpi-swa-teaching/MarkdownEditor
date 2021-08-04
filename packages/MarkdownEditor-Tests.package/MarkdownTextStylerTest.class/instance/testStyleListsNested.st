tests - container
testStyleListsNested

	| text |
	text := '1. lvl1
    1. lvl2
        1. lvl*3*
    2. lvl2  ' asText.
	textStyler privateStyle: text.
	"fontSize := self styleSettingsForStylingTests fontSizes at: 'Heading 5'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Heading 5'.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize}
		areStyleOf: text"