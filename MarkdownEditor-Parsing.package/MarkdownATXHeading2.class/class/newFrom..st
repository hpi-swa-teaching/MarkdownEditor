as yet unclassified
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}#{1,6}\s+([^#]*)#*\s*$'.
	(matcher matches: aString)
		ifTrue: [^self new 
				content: ((matcher subexpressions: 2) first);
				yourself].
	^ nil