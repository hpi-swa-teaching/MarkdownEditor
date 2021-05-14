test - open / close
testOpenFile

	| fileChooser |

	FileDirectory default deleteFileNamed: 'testOpenFile.md'.
	
	editor markdownText: '# Heading'.
	editor saveAsFile: 'testOpenFile.md'.
	
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	fileChooser := MarkdownFileChooserMock new.
	
	self assert: (fileChooser initializeCalled = false).
	editor openFile: fileChooser.
	self assert: (fileChooser initializeCalled = true).
	self assert: (fileChooser suffixes = {'md'}).
	self assert: (fileChooser openCalled = true).
	
	FileDirectory default deleteFileNamed: 'testOpenFile.md'.