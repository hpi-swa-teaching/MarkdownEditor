test - open / close
testOpenFile

	| fileChooser |
	
	fileChooser := MarkdownFileChooserMock new.
	
	self assert: (fileChooser initializeCalled = false).
	editor openFile: fileChooser.
	self assert: (fileChooser initializeCalled = true).
	self assert: (fileChooser suffixes = {'md'}).
	self assert: (fileChooser openCalled = true).
	self assert: MarkdownMockFile defaultContent equals: editor markdownText.
	self assert: MarkdownMockFile defaultName equals: editor currentFilePath