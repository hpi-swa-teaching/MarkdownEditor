initialize-release
initializeActions

	self addMorph: (PluggableButtonMorph new 
		position: self position + (250@40); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #handleCancel; 
		yourself).
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + (300@40); 
		label: 'Apply'; 
		target: self; 
		actionSelector: #handleApply; 
		yourself).