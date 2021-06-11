parsing
closeOpenBlocks: aString startingAt: aMarkdownBlock

	| remains |
	(remains := aMarkdownBlock applyOnLine: aString)
	ifNil: [self firstUnmatchedBlock: aMarkdownBlock. ^ aString].
	(remains == '') ifTrue: [^ nil].
	aMarkdownBlock children do: [:child |
        	child isOpen ifTrue: [
			self lastMatchedBlock: aMarkdownBlock.
			^ self closeOpenBlocks: remains startingAt: child]].
	^ aString