comparing
= aMarkdownBlock

	^ super = aMarkdownBlock 
		and: [
			self indentation = aMarkdownBlock indentation
		and: [ 
			self listMarker = aMarkdownBlock listMarker
		and: [ 
			self isOrdered = aMarkdownBlock isOrdered] ] ]