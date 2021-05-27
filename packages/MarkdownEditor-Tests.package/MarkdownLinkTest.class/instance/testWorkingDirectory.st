tests
testWorkingDirectory

	| link  |
	link := (MarkdownLink from: 1 to: 4) url: ''.
	self assert: 
		(link getAbsoluteUrlFromPath: MarkdownEditor new currentFilePath) pathForFile = 
		FileDirectory default asUrl pathForFile.
	
	link url: 'testtest.jpg'.
	self assert: 
		(link getAbsoluteUrlFromPath: 'C:\Users\conrad\OneDrive - Universität Potsdam\Dokumente\HPI\SWT\SWT2021\SWT2021.app\Contents\Resources\testWorkingDir\test.md') pathForFile = 
		'C:\Users\conrad\OneDrive - Universität Potsdam\Dokumente\HPI\SWT\SWT2021\SWT2021.app\Contents\Resources\testWorkingDir\testtest.jpg'.
	