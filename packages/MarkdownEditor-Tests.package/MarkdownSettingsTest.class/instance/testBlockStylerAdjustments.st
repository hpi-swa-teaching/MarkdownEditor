tests
testBlockStylerAdjustments

	| options styleSettings |
	
	options := MarkdownSettings new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [:newStyleSettings | styleSettings := newStyleSettings].
		
	self assert: ((self blockStylerOf: options for: 'Heading 1') fontSizeSlider getScaledValue asInteger) = 34.
	self assert: ((self blockStylerOf: options for: 'Heading 4') fontSizeSlider getScaledValue asInteger) = 19.
	self assert: ((self blockStylerOf: options for: 'Comment') fontColorPicker selectedColor) = Color lightGray.