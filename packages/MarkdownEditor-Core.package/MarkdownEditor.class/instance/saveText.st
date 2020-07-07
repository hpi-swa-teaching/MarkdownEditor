open / save
saveText

	self currentFilePath isEmpty
		ifTrue: [self saveAsFile: self fileSaverDialog]
		ifFalse: [self putDictionaryOn: (FileStream oldFileNamed: self currentFilePath)]