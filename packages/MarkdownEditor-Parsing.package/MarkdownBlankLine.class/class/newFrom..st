instance creation
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '^(\s*)'.
	(matcher matches: aString)
	ifTrue: [^ self new 
				content: '';
				beClosed;
				indentation: (matcher subexpression: 2) size;
				yourself].
	^ nil 		