running
styleSettingsForHtmlTests

	| styleSettings |
	
	styleSettings := MarkdownStyleSettings default.
	styleSettings fontColors at: 'Blockquote' put: Color blue.
	styleSettings fontColors at: 'Comment' put: Color lightGray.
	styleSettings fontColors at: 'Heading 1' put: Color black.
	styleSettings fontColors at: 'Heading 2' put: Color black.
	styleSettings fontColors at: 'Heading 3' put: Color black.
	styleSettings fontColors at: 'Heading 4' put: Color black.
	styleSettings fontColors at: 'Heading 5' put: Color black.
	styleSettings fontColors at: 'Heading 6' put: Color black.
	styleSettings fontColors at: 'Ord. List 1' put: Color black.
	styleSettings fontColors at: 'Ord. List 2' put: Color black.
	styleSettings fontColors at: 'Ord. List 3+' put: Color black.
	styleSettings fontColors at: 'Paragraph' put: Color black.
	styleSettings fontColors at: 'Unord. List 1' put: Color black.
	styleSettings fontColors at: 'Unord. List 2' put: Color black.
	styleSettings fontColors at: 'Unord. List 3+' put: Color black.
	^ styleSettings
	
	