parsing
consumeMarkersWithBlock: aMarkdownBlock
	
	| result |
	aMarkdownBlock isClosed ifTrue: [^self lookForNewBlockStarts].
	result := aMarkdownBlock continue: self state.
	
	result = 0 "matched"
	ifTrue: [^self consumeMarkersWithBlock: aMarkdownBlock children last].
	
	result = 1 "not matched"
	ifTrue: [self state container: self state container container.
		self state lastMatchedContainer: self state container.
		^self lookForNewBlockStarts].
	
	result = 2 "reached end of line"
	ifTrue: [^self].