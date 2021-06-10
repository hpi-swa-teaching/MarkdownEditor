as yet unclassified
closeOpenBlocks: aString startingAt: aMarkdownBlock

	| remains |
	(remains := aMarkdownBlock applyOnLine: aString)
	ifNil: [^ aString].
	(remains == '') ifTrue: [^ ''].
	aMarkdownBlock children do: [:child |
        child isOpen ifTrue: [^self closeOpenBlocks: remains startingAt: child]]