accessing
content: aString

	content := aString.
	self attributes: (MarkdownInlineParser new parse: aString)