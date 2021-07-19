tests - open / close
testSaveAndOpen

	| file content |
	file := MarkdownMockFile new.
	content := '# Hello World'.

	editor markdownText: content.
	editor putTextOn: file.
	
	editor handleClose.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: file.
	self assert: (editor markdownText) equals: content