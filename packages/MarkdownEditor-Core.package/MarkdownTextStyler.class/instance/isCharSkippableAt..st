helper
isCharSkippableAt: anIndex

	| line indexInLine |
	(self text at: anIndex) = Character cr
		ifTrue: [^ false].
	(self text at: anIndex) isSeparator
		ifFalse: [^ false].
	self text asString isAllSeparators
		ifTrue: [^ true].
	
	line := self text asString lineCorrespondingToIndex: anIndex.
	indexInLine := self realtiveIndexInLineCorrespondingTo: anIndex.
	^ ((line first: indexInLine) isAllSeparators) 
		or: [(line allButFirst: indexInLine) isAllSeparators]