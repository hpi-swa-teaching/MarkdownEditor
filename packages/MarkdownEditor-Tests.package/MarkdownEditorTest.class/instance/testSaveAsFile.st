test - open / close
testSaveAsFile

	FileDirectory default deleteFileNamed: 'testSaveAsFile.md'.
	
	editor markdownText: '# Heading' asText.
	editor saveAsFile: 'testSaveAsFile.md'.
	
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: (FileStream fileNamed: 'testSaveAsFile.md').
	self assert: ('# Heading' asText) equals: editor markdownText.
	
	FileDirectory default deleteFileNamed: 'testSaveAsFile.md'