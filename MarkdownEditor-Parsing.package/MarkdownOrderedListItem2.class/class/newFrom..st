as yet unclassified
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '(\s{0,3}([0-9]{1,9})\.)((\s{1,4})([^\s].*)|(\s)(.*))'.
	(matcher matches: aString)
		ifTrue: [^self new 
				number: ((matcher subexpressions: 3) first);
				indention: (matcher subexpressions: 2) first size + (((matcher subexpressions: 5) at: 1 ifAbsent: [(matcher subexpressions: 7) first]) size);
				content:  ((matcher subexpressions: 6) at: 1 ifAbsent: [(matcher subexpressions: 8) first]);
				yourself].
	^ nil