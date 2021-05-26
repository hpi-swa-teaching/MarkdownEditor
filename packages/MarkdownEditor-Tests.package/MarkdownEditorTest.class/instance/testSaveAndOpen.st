test - open / close
testSaveAndOpen

	| file content |
	file := MarkdownMockFile new.
	content := '# Hello World'.

	editor markdownText: content.
	editor putTextOn: file.
	
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: file.
	self assert: content equals: (editor markdownText)