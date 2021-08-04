open / save
saveText

	self currentFilePath isEmpty
		ifTrue: [self saveAsFile: (FileSaverDialog openOnInitialFilename: self defaultFilename)]
		ifFalse: [self putTextOn: (FileStream forceNewFileNamed: self currentFilePath)]