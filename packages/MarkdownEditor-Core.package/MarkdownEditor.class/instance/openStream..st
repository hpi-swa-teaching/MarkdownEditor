open / save
openStream: aStream

	aStream ifNotNil: [
		self currentFilePath: aStream name.
		self pluggableTextMorph setText: (MarkdownStringUtil getContentOf: aStream).
		self saveTextInModel]