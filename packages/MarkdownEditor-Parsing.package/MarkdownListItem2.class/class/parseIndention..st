as yet unclassified
parseIndention: aString

	|matcher|
	matcher := RxMatcher forString: '((\s{1,4})([^\s].*)|(\s).*)?'.
	(matcher matches: aString)
	ifFalse: [^ 0].
	^ ((matcher subexpressions: 3) at: 1 
                        ifAbsent: [(matcher subexpressions: 5) at: 1 ifAbsent: [' ']]) size.