open / save
saveText

	self currentFilePath isEmpty
		ifTrue: [self saveAsFile: (FileSaverDialog openOnInitialFilename: 'swt.', self fileEnding)]
		ifFalse: [self putDictionaryOn: (FileStream oldFileNamed: self currentFilePath)]