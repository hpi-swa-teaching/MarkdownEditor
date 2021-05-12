test - open / close
testSaveAndOpen

	window delete.
	FileStream fileNamed: 'testSaveAndOpenTestFile.md'.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor markdownText: 'Hallo'.
	editor currentFilePath: 'testSaveAndOpenTestFile.md'.
	editor saveText.
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: (FileStream fileNamed: 'testSaveAndOpenTestFile.md').
	self assert: (editor markdownText) equals: 'Hallo'.
	
	FileDirectory default deleteFileNamed: 'testSaveAndOpenTestFile.md'