applying
matchesList: aMarkdownBlock

	^ (aMarkdownBlock isKindOf: MarkdownList) 
		and: [aMarkdownBlock isOrdered = self isOrdered 
			and: [aMarkdownBlock listMarker = self listMarker]]