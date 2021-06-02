appearance
updateAdvancedColorPicker

	self advancedColorPicker width: self advancedPickerWidth.
	self advancedColorPicker height: self height - self advancedPickerOffset.
	self advancedColorPicker position: self position + (self simpleChooserWidth @ (self advancedPickerOffset / 2))
	