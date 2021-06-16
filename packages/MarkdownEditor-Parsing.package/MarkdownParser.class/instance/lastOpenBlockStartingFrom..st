document structure
lastOpenBlockStartingFrom: aMarkdownBlock 
	
	(aMarkdownBlock isKindOf: MarkdownLeafBlock) ifTrue: [^ aMarkdownBlock].
	aMarkdownBlock children do: [:child | 
		child isOpen ifTrue: [^self lastOpenBlockStartingFrom: child]].
	^ nil