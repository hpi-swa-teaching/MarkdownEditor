open / save
saveText

	self currentFilePath isEmpty
		ifTrue: [self saveAsFile]
		ifFalse: [self putDictionaryOn: (FileStream oldFileNamed: self currentFilePath)]