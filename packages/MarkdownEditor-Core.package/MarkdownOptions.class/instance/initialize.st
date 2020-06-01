as yet unclassified
initialize

	super initialize.
	self fontSizeLabel: (PluggableTextMorph new position: self position + (10@200); lock; yourself).
	self addMorph: self fontSizeLabel.
	self fontSizeSlider: (SimpleSliderMorph new target: self; actionSelector: #sliderTest:; minVal: 10; maxVal: 50; position: self position + (50@10); 
						orientation: #horizontal; height: 20; width: 100; yourself).
	self addMorph: self fontSizeSlider.
	self addMorph: (ColorPickerMorph new position: self position + (250@10); yourself).
	self addMorph: (PluggableButtonMorph new position: self position + (100@100); label: 'save'; target: self; actionSelector: #handleSave; yourself).