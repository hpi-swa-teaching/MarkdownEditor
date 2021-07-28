open / save
openStream: aStream

	aStream ifNotNil: [
		self currentFilePath: aStream name.
		self textMorph setText: (self getContentOf: aStream).
		self saveTextInModel]