test - open / close
testSaveAsFile

	| editor |
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	FileDirectory default deleteFileNamed: 'testSaveAsFile.md'.
	
	editor markdownText: '# Heading'.
	editor saveAsFile: 'testSaveAsFile.md'.
	
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: (FileStream fileNamed: 'testSaveAsFile.md').
	self assert: (editor markdownText) equals: '# Heading'.
	
	FileDirectory default deleteFileNamed: 'testSaveAsFile.md'