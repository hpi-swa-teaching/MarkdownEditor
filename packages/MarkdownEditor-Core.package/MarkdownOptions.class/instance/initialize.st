as yet unclassified
initialize

	super initialize.
	self fontSizeLabel: (TextMorph new position: self position + (200@30); height: 20; width: 30; lock; yourself).
	self fontSizeSlider: (SimpleSliderMorph new target: self; actionSelector: #handleSliderChange:; minVal: 10; maxVal: 50; position: self position + (100@30); 
						orientation: #horizontal; height: 20; width: 100; yourself).
						
	self addMorph: (TextMorph new contents: 'H1'; position: self position + (50@30); lock; yourself). 
	self addMorph: self fontSizeSlider.
	self addMorph: self fontSizeLabel.
	"self addMorph: (ColorPickerMorph new position: self position + (250@10); yourself)."
	
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + (250@300); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #closeMarkdownOptions; 
		yourself).
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + (300@300); 
		label: 'Save'; 
		target: self; 
		actionSelector: #handleSave; 
		yourself).
