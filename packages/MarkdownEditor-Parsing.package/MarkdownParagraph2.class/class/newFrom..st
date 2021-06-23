instance creation
newFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}([^\s]+(.*[^\s]+)?)?\s*'.
	(matcher matches: aString)
		ifTrue: [^self new 
				addLine: ((matcher subexpressions: 2) at: 1 ifAbsent: ['']);
				yourself].
	^ nil