instance creation
newOrderedFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '(\s{0,3}([0-9]{1,9})(\.|\)))((\s{1,4})([^\s].*)|(\s)(.*))?'.
	(matcher matches: aString)
		ifTrue: [^self new
			listMarker: (matcher subexpressions: 4) first;
            	number: (matcher subexpressions: 3) first asNumber;
			indention: (matcher subexpressions: 2) first size + 
				((matcher subexpressions: 6) at: 1 
                        ifAbsent: [(matcher subexpressions: 8) at: 1 ifAbsent: [' ']]) size;
                	innerLine: ((matcher subexpressions: 7) at: 1 
				ifAbsent: [(matcher subexpressions: 9) at: 1 ifAbsent: ['']]);
			isOrdered: true;
			yourself].
	^ nil