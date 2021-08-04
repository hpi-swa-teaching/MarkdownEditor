tests - open / close
testFileEnding

	self assert: 'md' equals: editor fileEnding.
	self assert: (editor defaultFilename endsWith: editor fileEnding)
