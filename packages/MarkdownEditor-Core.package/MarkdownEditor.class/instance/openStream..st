open / save
openStream: aStream

	| dict |

	aStream ifNotNil: [
		self currentFilePath: aStream name.
		dict := STON fromStream: aStream.
		self textMorph setText: (dict at: 'text').
		self applySavedStyleSettingsFrom: dict]