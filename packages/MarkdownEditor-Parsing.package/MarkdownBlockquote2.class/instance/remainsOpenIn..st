applying
remainsOpenIn: aString
	
	"should also remain open if the line is a simple paragraph"
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aString)
		ifTrue: [^ (matcher subexpressions: 2) first].
	^ nil