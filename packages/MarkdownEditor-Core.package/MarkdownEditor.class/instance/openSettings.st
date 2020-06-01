as yet unclassified
openSettings

	MarkdownOptions new 
		currentStyleSettings: self blockTextStyler styleSettings;
		onSave: [:aStyleSettings | self blockTextStyler styleSettings: aStyleSettings. self refreshText]; 
		openInWorld.