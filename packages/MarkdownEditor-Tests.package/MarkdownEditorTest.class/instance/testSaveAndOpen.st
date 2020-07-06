test - open / close
testSaveAndOpen

	| editor |
	window delete.
	FileStream fileNamed: 'testSaveAndOpenTestFile.mde'.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor markdownText: 'Hallo'.
	editor settingsMenu currentStyleSettings fontColors at: 'Blockquote' put: Color green.
	editor currentFilePath: 'testSaveAndOpenTestFile.mde'.
	editor saveText.
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: (FileStream fileNamed: 'testSaveAndOpenTestFile.mde').
	self assert: (editor markdownText) equals: 'Hallo'.
	self assert: (editor settingsMenu currentStyleSettings fontColors at: 'Blockquote') equals: Color green