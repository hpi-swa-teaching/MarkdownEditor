tests
testChangeHeadingFontSizesColors

	| h1Block h4Block styleSettings |
	
	(self blockStylerOf: settings for: 'Heading 1') handleSliderChangeTo: 42.
	(self blockStylerOf: settings for: 'Heading 4') handleSliderChangeTo: 12.
	(self blockStylerOf: settings for: 'Heading 1') fontColorPicker adjustTo: Color brown.
	(self blockStylerOf: settings for: 'Heading 4') fontColorPicker adjustTo: Color yellow.
	styleSettings := editor blockTextStyler styleSettings.
	styleSettings fontColors at: 'Heading 1' put: Color brown.
	styleSettings fontColors at: 'Heading 4' put: Color yellow.
	
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