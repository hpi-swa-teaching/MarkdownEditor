initialize
initialize

	super initialize.
	self color: Color transparent;
		width: 450;
		height: 70.
	self fontSizeSlider: (SimpleSliderMorph new 
		target: self; 
		actionSelector: #handleSliderChangeTo:; 
		"arguments: {};"
		minVal: MarkdownStyleSettings minFontSize; 
		maxVal: MarkdownStyleSettings maxFontSize; 
		position: 80@10; 
		orientation: #horizontal; 
		height: 40; 
		width: 100; 
		yourself).
	self sliderLabel: (TextMorph new 
		position: 185@20; 
		height: 20; 
		width: 20; 
		lock; 
		yourself).
	self fontColorPicker: (ColorPickerMorph new
		target: self;
		selector: #handleColorPickerChangeTo:with:;
		"argument: headerLevel;"
		position: 220@0;
		height: 60;
		width: 190;
		yourself).
		
	self addMorph: self fontSizeSlider.
	self addMorph: self sliderLabel.
	self addMorph: self fontColorPicker.