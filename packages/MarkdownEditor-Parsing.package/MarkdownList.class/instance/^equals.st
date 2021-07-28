comparing
= aMarkdownBlock

	^ super = aMarkdownBlock 
		and: [ 
			self isLoose = aMarkdownBlock isLoose
		and: [ 
			self startNumber = aMarkdownBlock startNumber]] 