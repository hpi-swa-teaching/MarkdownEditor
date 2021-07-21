tests - inline styling
testTextPersistenceForInlineStyling

	| textMorph |
	textMorph := toolbuilder build: (MarkdownEditor new
		buildEditorTextMorphWith: toolbuilder).
	textMorph
		styler: (MarkdownTextStyler new view: textMorph);
		replaceSelectionWith: 'I like trains.';
		accept.
	self assert: 'I like trains.' asText equals: textMorph text