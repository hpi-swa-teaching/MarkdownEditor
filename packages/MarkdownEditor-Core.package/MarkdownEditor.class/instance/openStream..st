open / save
openStream: aStream

	aStream ifNotNil: [
		self currentFilePath: aStream name.
		self pluggableTextMorph setText: (self getContentOf: aStream).
		self saveTextInModel]