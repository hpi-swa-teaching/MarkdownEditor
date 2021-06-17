applying
applyOnLine: aString
	
	"lazy continuation line is also possible but not implementet in this method"
	"| matcher |
	matcher := RxMatcher forString: '\s{', self indention, '}(.*)|(\s*)'.
	(matcher matches: aString)
		ifTrue: [^(matcher subexpressions: 2) at: 1 ifAbsent: [(matcher subexpressions: 3) first]]."
	^ nil