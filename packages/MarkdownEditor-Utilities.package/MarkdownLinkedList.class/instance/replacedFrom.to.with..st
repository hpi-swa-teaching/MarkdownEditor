copying
replacedFrom: aStartIndex to: anEndIndex with: anObject

	^ (self class newFrom: 
			(self copyReplaceFrom: aStartIndex to: anEndIndex with: {anObject}))