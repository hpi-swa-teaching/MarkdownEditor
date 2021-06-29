copying
replacedFrom: aStartIndex to: anEndIndex with: anObject

	^ (MarkdownLinkedList newFrom: 
			(self copyReplaceFrom: aStartIndex to: anEndIndex with: {anObject}))