open / save
openStream: aStream

	aStream ifNotNil: [
		self currentFilePath: aStream name.
		self textMorph setText: aStream contentsOfEntireFile.
		self saveTextInModel]