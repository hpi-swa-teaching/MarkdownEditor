parsing
createLines: aString
	
	| lines |
	lines := OrderedCollection new.
	aString lineIndicesDo: [:start :endWithoutDelimiters :end | 
		lines add: (MarkdownLine newFrom: (aString copyFrom: start to: end))].
	^ lines