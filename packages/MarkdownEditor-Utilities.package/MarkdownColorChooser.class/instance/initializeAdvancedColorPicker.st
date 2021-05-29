initialize
initializeAdvancedColorPicker

	self advancedColorPicker: (ColorPickerMorph new
			target: self;
			setProperty: #noDraggingThisPicker toValue: true;
			selector: #changed:;
			position: 310@0;
			height: 60;
			width: 190;
			yourself)