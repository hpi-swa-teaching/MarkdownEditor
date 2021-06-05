as yet unclassified
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '(\s{0,3})(~{3,}|`{3,})\s*([^~`\s]+)?'.
	(matcher matches: aString)
		ifTrue: [^self new
				indention: ((matcher subexpressions: 2) first length);
				openingFence: ((matcher subexpressions: 3) first);
				infoString: ((matcher subexpressions: 4) at: 1 ifAbsent: ['']);
				yourself].
	^ nil