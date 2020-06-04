initialize-release
initializeActions

	self addMorph: (PluggableButtonMorph new 
		position: self position + (250@300); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #closeMarkdownOptions; 
		yourself).
	
	self addMorph: (PluggableButtonMorph new 
		position: self position + (300@300); 
		label: 'Save'; 
		target: self; 
		actionSelector: #handleSave; 
		yourself).