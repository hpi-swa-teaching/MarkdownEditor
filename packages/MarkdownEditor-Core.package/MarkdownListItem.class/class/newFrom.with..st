creation
newFrom: aMarkdownLine with: aStyleSettings

	^ self new 
		lines: {aMarkdownLine} asOrderedCollection; 
		styleSettings: aStyleSettings;
		yourself