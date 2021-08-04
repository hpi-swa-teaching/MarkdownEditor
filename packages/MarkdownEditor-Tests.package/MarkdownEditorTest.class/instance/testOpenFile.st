tests - open / close
testOpenFile

	| fileChooser |
	
	fileChooser := MarkdownFileChooserMock new.
	
	self assert: fileChooser initializeCalled not.
	editor openFile: fileChooser.
	self assert: fileChooser initializeCalled .
	self assert: (fileChooser suffixes = {'md'}).
	self assert: fileChooser openCalled.
	self assert: editor markdownText equals: MarkdownMockFile defaultContent.
	self assert: editor currentFilePath equals: MarkdownMockFile defaultName
