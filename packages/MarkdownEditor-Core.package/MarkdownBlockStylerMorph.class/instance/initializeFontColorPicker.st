initialize
initializeFontColorPicker

	self fontColorPicker: (
		MarkdownColorChooser new
		position: self position;
		width: self width;
		height: self height;
		yourself).
	self fontColorPicker addDependent: self
	