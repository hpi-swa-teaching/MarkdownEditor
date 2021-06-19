parsing
lastOpenBlockStartingFrom: aMarkdownBlock 
	
	(aMarkdownBlock isKindOf: MarkdownLeafBlock) ifTrue: [^ aMarkdownBlock].
	aMarkdownBlock children do: [:child | 
		(child isKindOf: MarkdownBlankLine2) ifTrue: [child close. ^nil].
		child isOpen ifTrue: [^self lastOpenBlockStartingFrom: child]].
	^ nil