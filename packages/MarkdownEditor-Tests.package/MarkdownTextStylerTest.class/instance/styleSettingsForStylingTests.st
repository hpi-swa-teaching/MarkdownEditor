constants
styleSettingsForStylingTests

	| styleSettings |
	
	styleSettings := MarkdownStyleSettings default.
	styleSettings fontColors
		at: 'Blockquote' put: Color blue;
		at: 'Comment' put: Color lightGray;
		at: 'Heading 1' put: Color black;
		at: 'Heading 2' put: Color black;
		at: 'Heading 3' put: Color black;
		at: 'Heading 4' put: Color black;
		at: 'Heading 5' put: Color black;
		at: 'Heading 6' put: Color black;
		at: 'Ord. List 1' put: Color black;
		at: 'Ord. List 2' put: Color black;
		at: 'Ord. List 3+' put: Color black;
		at: 'Paragraph' put: Color black;
		at: 'Unord. List 1' put: Color black;
		at: 'Unord. List 2' put: Color black;
		at: 'Unord. List 3+' put: Color black.
	^ styleSettings