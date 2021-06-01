initialize
initializeLabelsWith: aClassLabel

	self sliderLabel: TextMorph new lock.
	self classLabel: (TextMorph new lock; 
		contents: aClassLabel;
		yourself)