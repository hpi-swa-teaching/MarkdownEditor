constants
styleSettingsForStylingTests

	| styleSettings |
	
	styleSettings := MarkdownStyleSettings default.
	styleSettings fontColors
		at: 'Blockquote' put: Color blue;
		at: 'Heading 1' put: Color black;
		at: 'Heading 2' put: Color black;
		at: 'Heading 3' put: Color black;
		at: 'Heading 4' put: Color black;
		at: 'Heading 5' put: Color black;
		at: 'Heading 6' put: Color black;
		at: 'Ord. List 1' put: Color black;
		at: 'Ord. List 2' put: Color red;
		at: 'Ord. List 3+' put: Color green;
		at: 'Paragraph' put: Color black;
		at: 'Unord. List 1' put: Color black;
		at: 'Unord. List 2' put: Color red;
		at: 'Unord. List 3+' put: Color green;
		at: 'thematic break' put: Color black.
	styleSettings fontSizes
		at: 'Blockquote' put: 10;
		at: 'Code' put: 12;
		at: 'Heading 1' put: 34;
		at: 'Heading 2' put: 28;
		at: 'Heading 3' put: 22;
		at: 'Heading 4' put: 19;
		at: 'Heading 5' put: 16;
		at: 'Heading 6' put: 14;
		at: 'Ord. List 1' put: 14;
		at: 'Ord. List 2' put: 12;
		at: 'Ord. List 3+' put: 10;
		at: 'Paragraph' put: 50;
		at: 'Unord. List 1' put: 14;
		at: 'Unord. List 2' put: 12;
		at: 'Unord. List 3+' put: 10;
		at: 'thematic break' put: 12.
	^ styleSettings