initialize
initializeFontColorPicker

	self fontColorPicker: (
		MarkdownColorChooser new
		position: self position;
		width: self width/2;
		height: self height;
		yourself).
	self fontColorPicker addDependent: self
	