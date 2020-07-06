open / save
openFile

	| fc |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setSuffixes: {self fileEnding}.
	self openStream: (fc open)