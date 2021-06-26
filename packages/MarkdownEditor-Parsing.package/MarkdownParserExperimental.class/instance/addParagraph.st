phase 3
addParagraph
	
	self state container: 
		(self state tip addChild: 
			(self pragraphClass createNew: self state)).
	self addLine.
	