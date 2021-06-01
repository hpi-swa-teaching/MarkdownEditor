initialize
initializeFontColorPicker

	self fontColorPicker: (
		MarkdownColorChooser new
		position: 250 @ 0;
		width: self width / 2;
		height: self height;
		yourself).
	self fontColorPicker addDependent: self
	