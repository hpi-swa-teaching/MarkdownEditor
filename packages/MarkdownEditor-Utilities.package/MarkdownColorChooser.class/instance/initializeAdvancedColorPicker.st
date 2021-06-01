initialize
initializeAdvancedColorPicker

	self advancedColorPicker: (ColorPickerMorph new
			target: self;
			setProperty: #noDraggingThisPicker toValue: true;
			selector: #changed:;
			yourself)