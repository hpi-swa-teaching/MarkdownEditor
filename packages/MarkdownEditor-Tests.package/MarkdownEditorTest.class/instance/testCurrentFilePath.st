test - open / close
testCurrentFilePath

	| editor |
	editor := MarkdownEditor new.
	editor currentFilePath: 'Test test'.
	self assert: editor currentFilePath equals: 'Test test'