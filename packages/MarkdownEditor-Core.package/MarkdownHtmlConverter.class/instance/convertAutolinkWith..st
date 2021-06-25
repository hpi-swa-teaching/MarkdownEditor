new html converter
convertAutolinkWith: aMarkdownAutolink

	^ String streamContents: [:htmlStream | 
		htmlStream 
			nextPutAll: aMarkdownAutolink htmlOpeningTag;
			nextPutAll: aMarkdownAutolink path;
			nextPutAll: aMarkdownAutolink htmlClosingTag]