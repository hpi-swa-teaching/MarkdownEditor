open / save
saveAsFile: aFilePath

	aFilePath ifNotNil: [self putDictionaryOn: (FileStream newFileNamed: aFilePath).
					  self currentFilePath: aFilePath]