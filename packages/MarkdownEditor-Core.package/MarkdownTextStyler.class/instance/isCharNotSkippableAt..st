helper
isCharNotSkippableAt: anIndex

	| line indexInLine |
	((self text at: anIndex) = Character cr or: [(self text at: anIndex) = Character tab])
		ifTrue: [^ true].
	(self text at: anIndex) isSeparator
		ifFalse: [^ true].
	self text asString isAllSeparators
		ifTrue: [^ false].
	
	line := self text asString lineCorrespondingToIndex: anIndex.
	indexInLine := self relativeIndexInLineCorrespondingTo: anIndex.
	^ (((line first: indexInLine) isAllSeparators) 
		or: [(line allButFirst: indexInLine) isAllSeparators]) not