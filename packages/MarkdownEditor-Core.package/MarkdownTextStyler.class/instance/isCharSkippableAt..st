helper
isCharSkippableAt: anIndex

	| line indexInLine |
	((self text at: anIndex) = Character cr or: [(self text at: anIndex) = Character tab])
		ifTrue: [^ false].
	(self text at: anIndex) isSeparator
		ifFalse: [^ false].
	self text asString isAllSeparators
		ifTrue: [^ true].
	
	line := self text asString lineCorrespondingToIndex: anIndex.
	indexInLine := self relativeIndexInLineCorrespondingTo: anIndex.
	^ ((line first: indexInLine) isAllSeparators) 
		or: [(line allButFirst: indexInLine) isAllSeparators]