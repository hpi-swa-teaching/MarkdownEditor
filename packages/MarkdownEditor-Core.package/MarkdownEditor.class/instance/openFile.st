open / save
openFile

	| fc stream dict |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setSuffixes: {self fileEnding}.
	Transcript show: World submorphs; cr.
	stream := fc open.
	
	stream ifNotNil: [
		self currentFilePath: stream name.
		dict := STON fromStream: stream.
		self textMorph setText: (dict at: 'text').
		self applySavedStyleSettingsFrom: dict]