converting
convertLeafBlockWith: aMarkdownLeaf

	^ String streamContents: [:inlineStream | 
		inlineStream nextPutAll: aMarkdownLeaf htmlOpeningTag.
		aMarkdownLeaf inlineElements do: [:inline | inlineStream nextPutAll: (inline convertWith: self)].
		inlineStream nextPutAll: aMarkdownLeaf htmlClosingTag]