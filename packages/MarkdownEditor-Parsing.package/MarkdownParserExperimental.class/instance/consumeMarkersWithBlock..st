phase 1
consumeMarkersWithBlock: aMarkdownBlock
	
	| result |
	aMarkdownBlock isOpen 
		ifFalse: [self state allBlocksClosed: self state container == self state oldTip.
			^self lookForNewBlockStarts].
	result := aMarkdownBlock continue: self state.
	
	result = 0 "matched - keep going"
	ifTrue: [(aMarkdownBlock isKindOf: MarkdownLeafBlock) & aMarkdownBlock children notEmpty
		ifFalse: [self state allBlocksClosed: self state container == self state oldTip.
			^self lookForNewBlockStarts].
		^self consumeMarkersWithBlock: aMarkdownBlock children last].
	
	result = 1 "not matched - continue with phase 2"
	ifTrue: [self state container: self state container container.
		self state lastMatchedContainer: self state container.
		self state allBlocksClosed: self state container == self state oldTip.
		^self lookForNewBlockStarts].
	
	result = 2 "reached end of line - parsing done for this line"
	ifTrue: [^self].