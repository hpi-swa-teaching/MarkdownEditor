initialize
initializeActions
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + ((2 * self width - 120)@50); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #handleCancel; 
		yourself).
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + ((2 * self width - 70)@50); 
		label: 'Apply'; 
		target: self; 
		actionSelector: #handleApply; 
		yourself).