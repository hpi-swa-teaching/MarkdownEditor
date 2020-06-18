as yet unclassified
testChangeHeadingFontSizes

	| options h1Block h4Block styleSettings |
	
	options := MarkdownOptions new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:newStyleSettings | styleSettings := newStyleSettings].
		
	(self blockStylerOf: options for: 'Heading 1') handleSliderChangeTo: 42.
	(self blockStylerOf: options for: 'Heading 4') handleSliderChangeTo: 12.
	h1Block := MarkdownHeading
		newFrom: (MarkdownLine newFrom: '# observer', Character cr with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color black. self fontSized: 42}}
		areStyleOf: h1Block asText.
	h4Block := MarkdownHeading
		newFrom: (MarkdownLine newFrom: '#### decorator', Character cr with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color black. self fontSized: 12}}
		areStyleOf: h4Block asText.