test - open / close
testCurrentFilePath

	editor currentFilePath: 'Test test'.
	self assert: editor currentFilePath equals: 'Test test'