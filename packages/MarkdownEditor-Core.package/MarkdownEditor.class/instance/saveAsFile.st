open / save
saveAsFile

	| filePath |
	filePath := (FileSaverDialog openOnInitialFilename: 'swt.', self fileEnding).
	filePath ifNotNil: [self putDictionaryOn: (FileStream newFileNamed: filePath).
					  self currentFilePath: filePath]