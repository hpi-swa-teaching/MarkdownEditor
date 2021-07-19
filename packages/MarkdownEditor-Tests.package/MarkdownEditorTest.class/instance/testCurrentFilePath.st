tests - open / close
testCurrentFilePath

	editor currentFilePath: 'Test test'.
	self assert: 'Test test' equals: editor currentFilePath