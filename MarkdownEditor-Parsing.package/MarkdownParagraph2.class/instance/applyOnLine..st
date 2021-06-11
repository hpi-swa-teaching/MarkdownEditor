as yet unclassified
applyOnLine: aString

	| matcher |
	matcher := RxMatcher forString: '\s*(.*[^\s]+)\s*'.
	(matcher matches: aString)
		ifTrue: [self content: self content, ((matcher subexpressions: 2) at: 1 ifAbsent: ['']).
			^'']
		ifFalse: [^nil]