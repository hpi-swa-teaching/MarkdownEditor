testing
isClosed

	| lastLineWithoutBlanks |
	lastLineWithoutBlanks := self lastLine asString withBlanksTrimmed.
	^ self lines size > 1
		and: [self lastLine isIndented not]
		and: [lastLineWithoutBlanks allSatisfy: [:character | character = $`]]
		and: [lastLineWithoutBlanks size >= self openingFenceLength]