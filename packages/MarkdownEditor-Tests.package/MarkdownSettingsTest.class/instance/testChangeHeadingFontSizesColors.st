tests
testChangeHeadingFontSizesColors

	| options h1Block h4Block styleSettings |
	
	options := MarkdownSettings UniqueInstance.
		
	(self blockStylerOf: options for: 'Heading 1') handleSliderChangeTo: 42.
	(self blockStylerOf: options for: 'Heading 4') handleSliderChangeTo: 12.
	(self blockStylerOf: options for: 'Heading 1') handleColorPickerChangeTo: Color brown with: nil.
	(self blockStylerOf: options for: 'Heading 4') handleColorPickerChangeTo: Color yellow with: nil.
	styleSettings := editor blockTextStyler styleSettings.
	
	h1Block := MarkdownHeading
		newFrom: (MarkdownLine newFrom: '# observer', Character cr with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color brown. self fontSized: 42}}
		areStyleOf: h1Block asText.
	h4Block := MarkdownHeading
		newFrom: (MarkdownLine newFrom: '#### decorator', Character cr with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color yellow. self fontSized: 12}}
		areStyleOf: h4Block asText.