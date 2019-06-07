parsing
processLine: aString

	| matchingBlockClass |
	matchingBlockClass := self determineMatchingBlockClass: aString.
	(self isLastBlockExtendableWith: aString andNotInterruptedBy: matchingBlockClass)
		ifTrue: [self blocks last append: aString]
		ifFalse: [self blocks add: (matchingBlockClass newFrom: aString)]