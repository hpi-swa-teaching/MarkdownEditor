initialize
open

	self openCalled: true.
	^ MultiByteFileStream newFrom: (FileStream fileNamed: 'testOpenFile.mde')