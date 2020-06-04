initialize-release
initializeActions

	self addMorph: (PluggableButtonMorph new 
		position: self position + (250@300); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #handleCancel; 
		yourself).
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + (300@300); 
		label: 'Apply'; 
		target: self; 
		actionSelector: #handleApply; 
		yourself).