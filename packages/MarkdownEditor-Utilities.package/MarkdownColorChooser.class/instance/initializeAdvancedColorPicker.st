initialize
initializeAdvancedColorPicker

	self advancedColorPicker: (ColorPickerMorph new
			target: self;
			setProperty: #noDraggingThisPicker toValue: true;
			selector: #changed:;
			position: 310@0;
			height: self height - 10;
			width: 190;
			yourself)