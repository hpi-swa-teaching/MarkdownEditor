test - open / close
testSaveAsFile

	| editor |
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	FileDirectory default deleteFileNamed: 'testSaveAsFile.mde'.
	
	editor markdownText: '# Heading'.
	editor saveAsFile: 'testSaveAsFile.mde'.
	
	window delete.
	editor := MarkdownEditor new.
	window := toolbuilder open: editor.
	editor openStream: (FileStream fileNamed: 'testSaveAsFile.mde').
	self assert: (editor markdownText) equals: '# Heading'.
	
	FileDirectory default deleteFileNamed: 'testSaveAsFile.mde'