open / save - I/O
saveText

	self currentFilePath isEmpty
		ifTrue: [self saveAsFile: (FileSaverDialog openOnInitialFilename: self defaultFilename)]
		ifFalse: [self putTextOn: (FileStream oldFileNamed: self currentFilePath)]