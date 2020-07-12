tests
testChangeHeadingFontColors

	| options h1Block h4Block styleSettings |
	
	options := MarkdownSettings new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:newStyleSettings | styleSettings := newStyleSettings].
		
	(self blockStylerOf: options for: 'Heading 1') handleColorPickerChangeTo: Color brown with: nil.
	(self blockStylerOf: options for: 'Heading 4') handleColorPickerChangeTo: Color yellow with: nil.
	h1Block := MarkdownHeading
		newFrom: (MarkdownLine newFrom: '# observer', Character cr with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color brown. self fontSized: 34}}
		areStyleOf: h1Block asText.
	h4Block := MarkdownHeading
		newFrom: (MarkdownLine newFrom: '#### decorator', Character cr with: styleSettings).
	self 
		assertRuns: {20}
		values: {{TextColor color: Color yellow. self fontSized: 19}}
		areStyleOf: h4Block asText.