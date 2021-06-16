as yet unclassified
newUnorderedFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '(\s{0,3}(-|\+|\*))((\s{1,4})([^\s].*)|(\s)(.*))?'.
	(matcher matches: aString)
		ifTrue: [^self new 
				listMarker: (matcher subexpressions: 3) first;
				indention: (matcher subexpressions: 2) first size + ((matcher subexpressions: 5) at: 1 
					ifAbsent: [(matcher subexpressions: 7) at: 1 ifAbsent: [' ']]) size;
				innerLine: ((matcher subexpressions: 6) at: 1 ifAbsent: [(matcher subexpressions: 8) at: 1 ifAbsent: ['']]);
				isOrdered: false;
				yourself].
	^ nil