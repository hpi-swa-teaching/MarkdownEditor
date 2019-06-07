testing
isClosed

	| lastLineWithoutBlanks |
	lastLineWithoutBlanks := self lastLine withBlanksTrimmed.
	^ self content lineCount >= 2
		and: [(self lastLine beginsWith: '    ') not]
		and: [lastLineWithoutBlanks allSatisfy: [:character | character = $`]]
		and: [lastLineWithoutBlanks size >= self fenceLength]