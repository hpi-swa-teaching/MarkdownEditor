phase 3
addParagraph
	
	self state container: 
		(self state tip addChild: 
			(self pragraphClass new)).
	self state tip: self state container.
	self addLine.
	