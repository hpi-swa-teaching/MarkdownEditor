initialize-release
initializeActions

	self addMorph: (PluggableButtonMorph new 
		position: self position + (490@370); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #handleCancel; 
		yourself).
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + (540@370); 
		label: 'Apply'; 
		target: self; 
		actionSelector: #handleApply; 
		yourself).