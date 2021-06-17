parsing
addTextToLastOpenBlock: aString
	
	| lastOpenBlock |
	aString ifNil: [^nil].
	(self lastMatchedBlock isKindOf: MarkdownListItem2)
		ifTrue: [self firstUnmatchedBlock ifNotNil: [self firstUnmatchedBlock close]].
	(lastOpenBlock := self lastOpenBlock) 
		ifNotNil: [lastOpenBlock content: lastOpenBlock content, aString]
		ifNil: [self lastMatchedBlock children add: (MarkdownParagraph2 newFrom: aString)]