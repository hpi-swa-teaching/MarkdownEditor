converting
convertLeafBlockWithoutTraillingBlanks: aMarkdownLeaf

	| newInlines |
	newInlines := aMarkdownLeaf inlines.
	^ String streamContents: [:inlineStream | 
		inlineStream nextPutAll: aMarkdownLeaf htmlOpeningTag.
		aMarkdownLeaf inlines last content last = Character cr
			ifTrue: [newInlines last content: (aMarkdownLeaf inlines last content) withoutTrailingBlanks].
		newInlines do: [:in | inlineStream nextPutAll: (in convertWith: self)].
		inlineStream nextPutAll: aMarkdownLeaf htmlClosingTag]