test - open / close
testSaveAndOpen

	FileStream fileNamed: 'testSaveAndOpenTestFile.md'.
	editor markdownText: 'Hallo' asText.
	editor currentFilePath: 'testSaveAndOpenTestFile.md'.
	editor saveText.
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: (FileStream fileNamed: 'testSaveAndOpenTestFile.md').
	self assert: 'Hallo' asText equals: editor markdownText.
	
	FileDirectory default deleteFileNamed: 'testSaveAndOpenTestFile.md'