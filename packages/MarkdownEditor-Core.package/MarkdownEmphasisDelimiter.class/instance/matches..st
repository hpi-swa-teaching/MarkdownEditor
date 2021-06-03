testing
matches: aMarkdownEmphasisDelimiter 

	^ (self matchesType: aMarkdownEmphasisDelimiter)
		and: [(self matchesDelimiter: aMarkdownEmphasisDelimiter)
				and: [self matchesOpenClose: aMarkdownEmphasisDelimiter]]