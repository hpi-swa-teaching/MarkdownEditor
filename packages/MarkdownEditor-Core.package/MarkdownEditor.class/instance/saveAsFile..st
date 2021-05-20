open / save
saveAsFile: aFilePath

	aFilePath ifNotNil: [
		self putTextOn: (FileStream newFileNamed: aFilePath).
	  	self currentFilePath: aFilePath]