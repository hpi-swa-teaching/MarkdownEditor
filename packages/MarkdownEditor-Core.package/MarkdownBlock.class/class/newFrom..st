instance creation
newFrom: aMarkdownLine

	^ self new
		lines: {aMarkdownLine} asOrderedCollection;
		styleSettings: aMarkdownLine styleSettings;
		yourself