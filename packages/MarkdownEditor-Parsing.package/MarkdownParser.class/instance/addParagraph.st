phase 3
addParagraph
	
	self state container: 
		(self state tip addChild: 
			(self paragraphClass new 
				startPosition: self state charPos;
				yourself) withState: self state).
	self state tip: self state container.
	self addLine