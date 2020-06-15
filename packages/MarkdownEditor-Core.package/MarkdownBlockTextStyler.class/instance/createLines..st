parsing
createLines: aString
	
	| lines |
	lines := OrderedCollection new.
	aString lineIndicesDo: [:start :endWithoutDelimiters :end | 
		lines add: (MarkdownLine newFrom: (aString copyFrom: start to: end)).
		(self currentCursorPosition >= start and: self currentCursorPosition <= end ) ifTrue: [lines last isCurrentLine: true].
		lines size > 1 ifTrue: [lines last previousLine: (lines at: lines size - 1)]].
	^ lines