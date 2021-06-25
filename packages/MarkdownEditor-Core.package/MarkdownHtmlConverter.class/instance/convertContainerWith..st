newhtml 
convertContainerWith: aMarkdownContainer
	
	^ String streamContents: [:htmlStream | 
		htmlStream nextPutAll: aMarkdownContainer htmlOpeningTag.
		aMarkdownContainer children do: [:child | htmlStream nextPutAll: (child convertWith: self)].
		htmlStream nextPutAll: aMarkdownContainer htmlClosingTag]