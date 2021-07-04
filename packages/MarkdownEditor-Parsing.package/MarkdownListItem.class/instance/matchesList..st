applying
matchesList: aMarkdownBlock

	^ (aMarkdownBlock isKindOf: MarkdownList) 
		and: [aMarkdownBlock isOrdered = self isOrdered &
			(aMarkdownBlock listMarker = self listMarker)]