as yet unclassified
applyOnLine: aString
	
	"should also remain open if the line is a simple paragraph"
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>(.*)'.
	(matcher matches: aString)
		ifTrue: [^(matcher subexpressions: 2) first].
	^ nil