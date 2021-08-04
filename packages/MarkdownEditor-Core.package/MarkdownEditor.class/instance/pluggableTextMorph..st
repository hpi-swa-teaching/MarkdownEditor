accessing
pluggableTextMorph: aPluggableTextMorph

	pluggableTextMorph := aPluggableTextMorph.
	self markdownMenu: (MarkdownEditorMenu newFor: aPluggableTextMorph)