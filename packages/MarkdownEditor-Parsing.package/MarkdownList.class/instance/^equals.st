comparing
= aMarkdownBlock

	^ super = aMarkdownBlock 
		and: [self startNumber = aMarkdownBlock startNumber]