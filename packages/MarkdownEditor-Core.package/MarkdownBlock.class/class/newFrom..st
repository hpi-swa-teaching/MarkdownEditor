instance creation
newFrom: aMarkdownLine

	^ self new
		lines: {aMarkdownLine} asOrderedCollection;
		yourself