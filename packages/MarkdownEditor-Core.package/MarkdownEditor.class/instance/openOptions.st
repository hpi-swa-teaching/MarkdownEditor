as yet unclassified
openOptions

	self textMorph accept.
	(MarkdownOptions labelled: 'Markdown Editor - Options')
		currentStyleSettings: self blockTextStyler styleSettings;
		onSave: [:aStyleSettings | self blockTextStyler styleSettings: aStyleSettings. self refreshText]; 
		openInWorld.