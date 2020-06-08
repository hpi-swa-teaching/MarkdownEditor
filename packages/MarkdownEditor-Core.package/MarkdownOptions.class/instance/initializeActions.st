initialize-release
initializeActions

	self contentMorph scroller addMorph: (PluggableButtonMorph new 
		position: self contentMorph scroller position + (250@490); 
		label: 'Cancel'; 
		target: self; 
		actionSelector: #handleCancel; 
		yourself).
	
	self contentMorph scroller addMorph: (PluggableButtonMorph new 
		position: self contentMorph scroller position + (300@490); 
		label: 'Apply'; 
		target: self; 
		actionSelector: #closeMarkdownOptions; 
		yourself).