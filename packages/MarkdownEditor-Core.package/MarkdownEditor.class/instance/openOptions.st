as yet unclassified
openOptions

	self textMorph accept.
	MarkdownOptions new
		currentStyleSettings: self blockTextStyler styleSettings;
		onSave: [:aStyleSettings | self blockTextStyler styleSettings: aStyleSettings. self refreshText]; 
		openInWorld.