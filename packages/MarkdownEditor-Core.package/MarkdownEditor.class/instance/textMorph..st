accessing
textMorph: aTextMorph

	textMorph := aTextMorph.
	self markdownMenu: (MarkdownEditorMenu newFor: aTextMorph)