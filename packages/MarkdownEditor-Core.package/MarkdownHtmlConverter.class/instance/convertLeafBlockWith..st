newhtml 
convertLeafBlockWith: aMarkdownLeaf

	^ String streamContents: [:inlineStream | 
		inlineStream nextPutAll: aMarkdownLeaf htmlOpeningTag.
		aMarkdownLeaf inlines do: [:in | inlineStream nextPutAll: (in convertWith: self)].
		inlineStream nextPutAll: aMarkdownLeaf htmlClosingTag]