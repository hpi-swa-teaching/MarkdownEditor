test - open / close
testOpenFile

	| editor fileChooser |

	editor := MarkdownEditor new.
	window delete.
	window := toolbuilder open: editor.
	fileChooser := MarkdownFileChooserMock new.
	
	self assert: (fileChooser initializeCalled = false).
	editor openFile: fileChooser.
	self assert: (fileChooser initializeCalled = true).
	self assert: (fileChooser suffixes = {'mde'}).
	self assert: (fileChooser openCalled = true)