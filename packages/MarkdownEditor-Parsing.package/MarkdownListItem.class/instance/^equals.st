comparing
= aMarkdownBlock

	^ super = aMarkdownBlock 
		and: [
			self indentation = aMarkdownBlock indentation
		and: [ 
			self listMarker = aMarkdownBlock listMarker
		and: [ 
			self number = aMarkdownBlock number
		and: [ 
			self isOrdered = aMarkdownBlock isOrdered] ] ] ]