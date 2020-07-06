test - open / close
testSaveAndOpen

	| editor |
	window delete.
	FileStream fileNamed: 'testSaveAndOpenTestFile.mde'.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openFile.
	self assert: True.