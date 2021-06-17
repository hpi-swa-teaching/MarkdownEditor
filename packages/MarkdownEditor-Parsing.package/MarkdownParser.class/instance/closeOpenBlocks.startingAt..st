parsing
closeOpenBlocks: aString startingAt: aMarkdownBlock

	| remains |
	(remains := aMarkdownBlock applyOnLine: aString)
	ifNil: [self firstUnmatchedBlock: aMarkdownBlock. ^ aString].
	self lastMatchedBlock: aMarkdownBlock.
	(aMarkdownBlock isKindOf: MarkdownList2)
		ifTrue: [self lastMatchedBlock: aMarkdownBlock children last].
	(aMarkdownBlock isKindOf: MarkdownLeafBlock) ifTrue: [^ nil].
	aMarkdownBlock children do: [:child |
        	child isOpen ifTrue: [
			^ self closeOpenBlocks: remains startingAt: child]].
	^ remains