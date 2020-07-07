as yet unclassified
open

	self openCalled: true.
	^ MultiByteFileStream newFrom: (FileStream fileNamed: 'testOpenFile.mde')