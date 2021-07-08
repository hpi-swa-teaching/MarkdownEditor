styling
styleInlinesOf: aMarkdownLeaf

	^ aMarkdownLeaf inlines 
		inject: Text new
		into: [:combinedText :inline | combinedText, (inline applyStylingWith: self)]