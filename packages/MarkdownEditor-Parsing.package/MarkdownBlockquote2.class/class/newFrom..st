instance creation
newFrom: aString

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aString)
		ifTrue: [^self new 
				innerLine: ((matcher subexpressions: 2) first);
				yourself].
	^ nil