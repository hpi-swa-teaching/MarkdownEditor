comparing
= aMarkdownBlock

	^ super = aMarkdownBlock 
		and: [
			self indentation = aMarkdownBlock indentation
		and: [ 
			self listMarker = aMarkdownBlock listMarker
		and: [ 
			self isLoose = aMarkdownBlock isLoose
		and: [ 
			self startNumber = aMarkdownBlock startNumber
		and: [ 
			self isOrdered = aMarkdownBlock isOrdered] ] ] ] ] 