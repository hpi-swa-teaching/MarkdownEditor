initialize-release
initializeHeaderSettings

	self fontSizeLabels: Dictionary new.
	self fontSizeSliders: Dictionary new.

	1 to: 6 do: [:headerLevel | 
		self fontSizeLabels at: headerLevel put: (TextMorph new 
			position: self position + (200@(headerLevel * 30)); 
			height: 20; 
			width: 30; 
			lock; 
			yourself).
		self fontSizeSliders at: headerLevel put: (SimpleSliderMorph new 
			target: self; 
			actionSelector: #handleSliderChangeFor:with:; 
			arguments: {headerLevel};
			minVal: 10; 
			maxVal: 50; 
			position: self position + (100@(headerLevel * 30)); 
			orientation: #horizontal; 
			height: 20; 
			width: 100; 
			yourself).].
		
	1 to: 6 do: [:headerLevel | 
		self contentMorph scroller addMorph: (TextMorph new contents: 'H', headerLevel; position: self position + (50@(headerLevel * 30)); lock; yourself). 
		self contentMorph scroller addMorph: (self fontSizeSliders at: headerLevel).
		self contentMorph scroller addMorph: (self fontSizeLabels at: headerLevel).].
	
	"self addMorph: (ColorPickerMorph new position: self position + (250@10); yourself)."