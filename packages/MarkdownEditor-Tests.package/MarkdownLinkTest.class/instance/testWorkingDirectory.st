tests
testWorkingDirectory

	| link delimiter path |
	link := (MarkdownLink from: 1 to: 4) url: 'testWorkingDir'.
	self assert: (link getAbsoluteUrlFromPath: '') pathForFile 
		equals: FileDirectory default asUrl pathForFile, 'testWorkingDir'.
	
	delimiter := FileDirectory pathNameDelimiter asString.
	path := FileDirectory default pathName, delimiter, 'testWorkingDir', delimiter.
	link url: 'testtest.jpg'.
	self assert: (link getAbsoluteUrlFromPath: path, 'test.md') pathForFile 
		equals: path, 'testtest.jpg'.
		
	
	