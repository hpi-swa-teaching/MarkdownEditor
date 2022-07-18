initialize
initializeLabelsWith: aClassLabel

	self
		sliderLabel: (TextMorph new lock; 
		contents: '0';
		yourself).
	self
		classLabel: (TextMorph new lock; 
		contents: aClassLabel;
		yourself)