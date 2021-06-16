parsing
addTextToLastOpenBlock: aString
	
	| lastOpenBlock |
	aString ifNil: [^nil].
	(self lastOpenBlock isKindOf: MarkdownList2) ifTrue: [self halt.].
	(lastOpenBlock := self lastOpenBlock) 
		ifNotNil: [lastOpenBlock content: lastOpenBlock content, aString]
		ifNil: [self lastMatchedBlock children add: (MarkdownParagraph2 newFrom: aString)]