initialize
initializeFontColorPicker

	self fontColorPicker: (ColorPickerMorph new
		target: self;
		selector: #handleColorPickerChangeTo:with:;
		position: 230@0;
		height: 60;
		width: 190;
		yourself).