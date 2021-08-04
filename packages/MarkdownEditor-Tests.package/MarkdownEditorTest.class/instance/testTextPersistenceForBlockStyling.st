tests - block styling
testTextPersistenceForBlockStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		editorTextMorphSpecFor: toolbuilder).
	textMorph
		replaceSelectionWith: 'I like trains.';
		accept.
	self assert: 'I like trains.' asText equals: textMorph text