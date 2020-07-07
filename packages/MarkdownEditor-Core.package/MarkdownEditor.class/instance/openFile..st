open / save
openFile: aFileChooser

	aFileChooser initializeAsDialogBox.
	aFileChooser setSuffixes: {self fileEnding}.
	
	self openStream: (aFileChooser open)