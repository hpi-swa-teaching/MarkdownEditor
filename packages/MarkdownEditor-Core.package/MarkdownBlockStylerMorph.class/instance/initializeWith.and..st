initialize
initializeWith: canChangeFontSize and: canChangeFontColor

	self color: Color transparent;
		width: 450;
		height: 70.
	self fontSizeSlider: (SimpleSliderMorph new 
		target: self; 
		actionSelector: #handleSliderChangeTo:; 
		minVal: MarkdownStyleSettings minFontSize; 
		maxVal: MarkdownStyleSettings maxFontSize; 
		position: 90@10; 
		orientation: #horizontal; 
		height: 40; 
		width: 100; 
		yourself).
	self sliderLabel: (TextMorph new 
		position: 195@20; 
		height: 20; 
		width: 20; 
		lock; 
		yourself).
	self fontColorPicker: (ColorPickerMorph new
		target: self;
		selector: #handleColorPickerChangeTo:with:;
		position: 230@0;
		height: 60;
		width: 190;
		yourself).
		
	canChangeFontSize ifTrue: [
		self addMorph: self fontSizeSlider.
		self addMorph: self sliderLabel].
	canChangeFontColor ifTrue: [self addMorph: self fontColorPicker].