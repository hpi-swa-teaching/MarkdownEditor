instance creation
newFrom: aString
	
	| matcher |
	matcher := RxMatcher forString: '\s*'.
	(matcher matches: aString)
	ifTrue: [^self new 
				content: '';
				beClosed;
				yourself].
	^ nil 		