accessing
matchesList: aMarkdownBlock

	^ (aMarkdownBlock isKindOf: MarkdownList2) 
	and: [aMarkdownBlock isOrdered = self isOrdered &
	(aMarkdownBlock listMarker = self listMarker)]