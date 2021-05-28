tests
testWorkingDirectory

	| link  |
	link := (MarkdownLink from: 1 to: 4) url: ''.
	self assert: 
		(link getAbsoluteUrlFromPath: MarkdownEditor new currentFilePath) pathForFile = 
		FileDirectory default asUrl pathForFile.
	
	link url: 'testtest.jpg'.
	self assert: 
		(link getAbsoluteUrlFromPath: 'C:\testTestFolder\testFolder\testWorkingDir\test.md') pathForFile = 
		'C:\testTestFolder\testFolder\testWorkingDir\testtest.jpg'.
		
	
	