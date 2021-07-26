styling
styleInlinesOf: aMarkdownLeaf

	^ aMarkdownLeaf inlineElements 
		inject: Text new
		into: [:combinedText :inline | combinedText, (inline applyStylingWith: self)]