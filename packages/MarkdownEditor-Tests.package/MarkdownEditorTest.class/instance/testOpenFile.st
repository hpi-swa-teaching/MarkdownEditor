test - open / close
testOpenFile

	| fileChooser |
	
	fileChooser := MarkdownFileChooserMock new.
	
	self assert: (fileChooser initializeCalled = false).
	editor openFile: fileChooser.
	self assert: (fileChooser initializeCalled = true).
	self assert: (fileChooser suffixes = {'md'}).
	self assert: (fileChooser openCalled = true).
	self assert: editor markdownText equals: MarkdownMockFile defaultContent.
	self assert: editor currentFilePath equals: MarkdownMockFile defaultName