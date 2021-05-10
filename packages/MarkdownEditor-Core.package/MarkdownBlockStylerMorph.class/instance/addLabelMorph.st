initialize
addLabelMorph

	self addMorph: (TextMorph new 
		width: 80;
		height: 20;
		position: 0@20; 
		contents: self classLabel; 
		lock; 
		color: MarkdownStyleSettings themeFontColor;
		yourself). 