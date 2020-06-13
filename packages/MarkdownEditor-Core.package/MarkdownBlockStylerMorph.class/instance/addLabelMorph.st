initialize
addLabelMorph

	self addMorph: (TextMorph new 
		"fit text to width (see unordered list"
		width: 80;
		height: 20;
		position: 0@20; 
		contents: self classLabel; 
		rightFlush;
		lock; 
		yourself). 