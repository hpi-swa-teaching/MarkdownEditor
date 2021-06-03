open / save - I/O
saveAsFile: aFilePath

	aFilePath ifNotNil: [
		self putTextOn: (FileStream newFileNamed: aFilePath).
	  	self currentFilePath: aFilePath]