tests - open / close
testSave

	| content file |
	file := MarkdownMockFile new.
	content := '# Hello World'.
	editor markdownText: content.
	editor putTextOn: file.
	
	self assert: content equals: (file content)